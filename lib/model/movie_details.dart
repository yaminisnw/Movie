import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie/model/serializers.dart';

part 'movie_details.g.dart';

abstract class MovieDetails
    implements Built<MovieDetails, MovieDetailsBuilder> {
  MovieDetails._();

  factory MovieDetails([void Function(MovieDetailsBuilder) updates]) =
      _$MovieDetails;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(MovieDetails.serializer, this)
        as Map<String, dynamic>;
  }

  static MovieDetails fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(MovieDetails.serializer, json)!;
  }

  static Serializer<MovieDetails> get serializer => _$movieDetailsSerializer;

// object declaration for the movieDetails that is need to be fetched from the browser
  int? get id;


  @BuiltValueField(wireName: 'original_title')
  String? get originalTitle;

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
