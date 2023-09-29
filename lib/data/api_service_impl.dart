import 'package:built_collection/src/list.dart';
import 'package:http/http.dart';

import 'package:movie/model/movie.dart';

import '../core/api/api_client.dart';
import '../core/services/api_services.dart';
import 'api_client_impl.dart';

class _ApiUrls {
  final String _baseUrl;

  _ApiUrls(this._baseUrl);

  String baseUrl = 'https://api.themoviedb.org/3/';
  /*String apiToken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4OWI3MjM3YmJjZmYwZmEwNmU0NzgxMWJkZjBlYTEyMyIsInN1YiI6IjYxMjMzZjY0ZDY1OTBiMDA1ZDgyNmNkOCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.g3gysGzbAmwtS9RU_RZ0e1M52_S3hbFB0G9XT9Ba-HA';*/

  String get getPopular => '$baseUrl/movie/popular';

  String get getTopRated => '$baseUrl/movie/top_rated';

  String get getUpcoming => '$baseUrl/movie/upcoming';
}

extension _UrlUtils on String {
  Uri getUri() => Uri.parse(this);
}

class ApiServiceImpl implements ApiService {
  ApiServiceImpl({
    required String baseUrl,

  })  : _urls = _ApiUrls(baseUrl);


  final ApiClientImpl _client = ApiClientImpl();
  final _ApiUrls _urls;

  String apiToken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4OWI3MjM3YmJjZmYwZmEwNmU0NzgxMWJkZjBlYTEyMyIsInN1YiI6IjYxMjMzZjY0ZDY1OTBiMDA1ZDgyNmNkOCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.g3gysGzbAmwtS9RU_RZ0e1M52_S3hbFB0G9XT9Ba-HA';

  @override
  Future<void> init() async {}

  @override
  Future<void> dispose() async {}

  @override
  Future<BuiltList<Movie>?> getPopular() async {
    try {
      final Response response = await _client.get(
        _urls.getPopular.getUri(),
        headers: {'Authorization': 'Bearer $apiToken'},
      );
      if (response.isSuccess) {
        final List r = response.jsonMap!['results'] as List;
        List<Movie> movies = [];
        for (final i in r) {
          final a = Movie.fromJson(i);
          movies.add(a);
        }
        return movies.toBuiltList();
      }
      throw 'Error';
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<BuiltList<Movie?>> getTopRated() {
    // TODO: implement getTopRated
    throw UnimplementedError();
  }

  @override
  Future<BuiltList<Movie>> getUpcoming() {
    // TODO: implement getUpcoming
    throw UnimplementedError();
  }

/*@override
  Future<BuiltList<Movie?>> getTopRated() async {

  }

  @override
  Future<BuiltList<Movie>> getUpcoming() async{

  }*/
}
