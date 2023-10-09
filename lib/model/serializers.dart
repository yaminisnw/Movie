library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:movie/model/movie_details.dart';

import 'app_state.dart';
import 'movie.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  AppState,
  Movie,
  MovieDetails,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
