// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.popular;
    if (value != null) {
      result
        ..add('popular')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Movie)])));
    }
    value = object.movieDetails;
    if (value != null) {
      result
        ..add('movieDetails')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(MovieDetails)));
    }
    value = object.topRated;
    if (value != null) {
      result
        ..add('topRated')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Movie)])));
    }
    value = object.upcoming;
    if (value != null) {
      result
        ..add('upcoming')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Movie)])));
    }
    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'popular':
          result.popular.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Movie)]))!
              as BuiltList<Object?>);
          break;
        case 'movieDetails':
          result.movieDetails.replace(serializers.deserialize(value,
              specifiedType: const FullType(MovieDetails))! as MovieDetails);
          break;
        case 'topRated':
          result.topRated.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Movie)]))!
              as BuiltList<Object?>);
          break;
        case 'upcoming':
          result.upcoming.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Movie)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final BuiltList<Movie>? popular;
  @override
  final MovieDetails? movieDetails;
  @override
  final BuiltList<Movie>? topRated;
  @override
  final BuiltList<Movie>? upcoming;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates))._build();

  _$AppState._({this.popular, this.movieDetails, this.topRated, this.upcoming})
      : super._();

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        popular == other.popular &&
        movieDetails == other.movieDetails &&
        topRated == other.topRated &&
        upcoming == other.upcoming;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, popular.hashCode);
    _$hash = $jc(_$hash, movieDetails.hashCode);
    _$hash = $jc(_$hash, topRated.hashCode);
    _$hash = $jc(_$hash, upcoming.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppState')
          ..add('popular', popular)
          ..add('movieDetails', movieDetails)
          ..add('topRated', topRated)
          ..add('upcoming', upcoming))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  ListBuilder<Movie>? _popular;
  ListBuilder<Movie> get popular =>
      _$this._popular ??= new ListBuilder<Movie>();
  set popular(ListBuilder<Movie>? popular) => _$this._popular = popular;

  MovieDetailsBuilder? _movieDetails;
  MovieDetailsBuilder get movieDetails =>
      _$this._movieDetails ??= new MovieDetailsBuilder();
  set movieDetails(MovieDetailsBuilder? movieDetails) =>
      _$this._movieDetails = movieDetails;

  ListBuilder<Movie>? _topRated;
  ListBuilder<Movie> get topRated =>
      _$this._topRated ??= new ListBuilder<Movie>();
  set topRated(ListBuilder<Movie>? topRated) => _$this._topRated = topRated;

  ListBuilder<Movie>? _upcoming;
  ListBuilder<Movie> get upcoming =>
      _$this._upcoming ??= new ListBuilder<Movie>();
  set upcoming(ListBuilder<Movie>? upcoming) => _$this._upcoming = upcoming;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _popular = $v.popular?.toBuilder();
      _movieDetails = $v.movieDetails?.toBuilder();
      _topRated = $v.topRated?.toBuilder();
      _upcoming = $v.upcoming?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppState build() => _build();

  _$AppState _build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              popular: _popular?.build(),
              movieDetails: _movieDetails?.build(),
              topRated: _topRated?.build(),
              upcoming: _upcoming?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'popular';
        _popular?.build();
        _$failedField = 'movieDetails';
        _movieDetails?.build();
        _$failedField = 'topRated';
        _topRated?.build();
        _$failedField = 'upcoming';
        _upcoming?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
