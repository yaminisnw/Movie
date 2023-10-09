import 'package:built_collection/built_collection.dart';
import 'package:movie/core/services/app_service.dart';
import 'package:movie/model/movie.dart';
import 'package:movie/model/movie_details.dart';

abstract class ApiService extends AppService{
  Future<BuiltList<Movie>?> getPopular();

  Future <MovieDetails> getMovieDetails({required String movieId});

  Future<BuiltList<Movie?>> getTopRated();

  Future<BuiltList<Movie>> getUpcoming();


}