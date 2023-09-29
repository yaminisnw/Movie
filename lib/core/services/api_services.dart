import 'package:built_collection/built_collection.dart';
import 'package:movie/core/services/app_service.dart';
import 'package:movie/model/movie.dart';

abstract class ApiService extends AppService{
  Future<BuiltList<Movie>?> getPopular();

  Future<BuiltList<Movie?>> getTopRated();

  Future<BuiltList<Movie>> getUpcoming();


}