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
  int get id;
  @BuiltValueField(wireName:'poster_path')
  String get posterPath ;
  String  get title;
}