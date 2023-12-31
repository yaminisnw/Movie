import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie/model/serializers.dart';
part 'movie.g.dart';

abstract class Movie implements Built<Movie, MovieBuilder> {


  Movie._();
  factory Movie([void Function(MovieBuilder) updates]) = _$Movie;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Movie.serializer, this) as Map<String,dynamic>;
  }

  static Movie fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Movie.serializer, json)!;
  }

  static Serializer<Movie> get serializer => _$movieSerializer;

  int? get id;


  @BuiltValueField(wireName: 'original_title')
  String? get originalTitle;

  String? get title;

  @BuiltValueField(wireName: 'poster_path')
  String? get posterPath;

  String get imageUrl => 'https://image.tmdb.org/t/p/w500/${posterPath}';

  @BuiltValueField(wireName: 'backdrop_path')
  String? get backdropPath;

  String? get status;

  int? get runtime;

  int? get budget;

  int? get revenue;

  @BuiltValueField(wireName: 'imdb_id')
  String? get imdb;

  @BuiltValueField(wireName: 'vote_average')
  double? get voteRating;

  @BuiltValueField(wireName: 'release_date')
  String? get releaseDate;

  String? get overview; //Synopsis

}