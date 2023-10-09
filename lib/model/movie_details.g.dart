// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MovieDetails> _$movieDetailsSerializer =
    new _$MovieDetailsSerializer();

class _$MovieDetailsSerializer implements StructuredSerializer<MovieDetails> {
  @override
  final Iterable<Type> types = const [MovieDetails, _$MovieDetails];
  @override
  final String wireName = 'MovieDetails';

  @override
  Iterable<Object?> serialize(Serializers serializers, MovieDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.originalTitle;
    if (value != null) {
      result
        ..add('original_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.posterPath;
    if (value != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.backdropPath;
    if (value != null) {
      result
        ..add('backdrop_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.runtime;
    if (value != null) {
      result
        ..add('runtime')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.budget;
    if (value != null) {
      result
        ..add('budget')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.revenue;
    if (value != null) {
      result
        ..add('revenue')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.imdb;
    if (value != null) {
      result
        ..add('imdb_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.voteRating;
    if (value != null) {
      result
        ..add('vote_average')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.releaseDate;
    if (value != null) {
      result
        ..add('release_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.overview;
    if (value != null) {
      result
        ..add('overview')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MovieDetails deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieDetailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'original_title':
          result.originalTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'poster_path':
          result.posterPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'backdrop_path':
          result.backdropPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'runtime':
          result.runtime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'budget':
          result.budget = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'revenue':
          result.revenue = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'imdb_id':
          result.imdb = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vote_average':
          result.voteRating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'release_date':
          result.releaseDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$MovieDetails extends MovieDetails {
  @override
  final int? id;
  @override
  final String? originalTitle;
  @override
  final String? posterPath;
  @override
  final String? backdropPath;
  @override
  final String? status;
  @override
  final int? runtime;
  @override
  final int? budget;
  @override
  final int? revenue;
  @override
  final String? imdb;
  @override
  final double? voteRating;
  @override
  final String? releaseDate;
  @override
  final String? overview;

  factory _$MovieDetails([void Function(MovieDetailsBuilder)? updates]) =>
      (new MovieDetailsBuilder()..update(updates))._build();

  _$MovieDetails._(
      {this.id,
      this.originalTitle,
      this.posterPath,
      this.backdropPath,
      this.status,
      this.runtime,
      this.budget,
      this.revenue,
      this.imdb,
      this.voteRating,
      this.releaseDate,
      this.overview})
      : super._();

  @override
  MovieDetails rebuild(void Function(MovieDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieDetailsBuilder toBuilder() => new MovieDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieDetails &&
        id == other.id &&
        originalTitle == other.originalTitle &&
        posterPath == other.posterPath &&
        backdropPath == other.backdropPath &&
        status == other.status &&
        runtime == other.runtime &&
        budget == other.budget &&
        revenue == other.revenue &&
        imdb == other.imdb &&
        voteRating == other.voteRating &&
        releaseDate == other.releaseDate &&
        overview == other.overview;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, originalTitle.hashCode);
    _$hash = $jc(_$hash, posterPath.hashCode);
    _$hash = $jc(_$hash, backdropPath.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, runtime.hashCode);
    _$hash = $jc(_$hash, budget.hashCode);
    _$hash = $jc(_$hash, revenue.hashCode);
    _$hash = $jc(_$hash, imdb.hashCode);
    _$hash = $jc(_$hash, voteRating.hashCode);
    _$hash = $jc(_$hash, releaseDate.hashCode);
    _$hash = $jc(_$hash, overview.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovieDetails')
          ..add('id', id)
          ..add('originalTitle', originalTitle)
          ..add('posterPath', posterPath)
          ..add('backdropPath', backdropPath)
          ..add('status', status)
          ..add('runtime', runtime)
          ..add('budget', budget)
          ..add('revenue', revenue)
          ..add('imdb', imdb)
          ..add('voteRating', voteRating)
          ..add('releaseDate', releaseDate)
          ..add('overview', overview))
        .toString();
  }
}

class MovieDetailsBuilder
    implements Builder<MovieDetails, MovieDetailsBuilder> {
  _$MovieDetails? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _originalTitle;
  String? get originalTitle => _$this._originalTitle;
  set originalTitle(String? originalTitle) =>
      _$this._originalTitle = originalTitle;

  String? _posterPath;
  String? get posterPath => _$this._posterPath;
  set posterPath(String? posterPath) => _$this._posterPath = posterPath;

  String? _backdropPath;
  String? get backdropPath => _$this._backdropPath;
  set backdropPath(String? backdropPath) => _$this._backdropPath = backdropPath;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  int? _runtime;
  int? get runtime => _$this._runtime;
  set runtime(int? runtime) => _$this._runtime = runtime;

  int? _budget;
  int? get budget => _$this._budget;
  set budget(int? budget) => _$this._budget = budget;

  int? _revenue;
  int? get revenue => _$this._revenue;
  set revenue(int? revenue) => _$this._revenue = revenue;

  String? _imdb;
  String? get imdb => _$this._imdb;
  set imdb(String? imdb) => _$this._imdb = imdb;

  double? _voteRating;
  double? get voteRating => _$this._voteRating;
  set voteRating(double? voteRating) => _$this._voteRating = voteRating;

  String? _releaseDate;
  String? get releaseDate => _$this._releaseDate;
  set releaseDate(String? releaseDate) => _$this._releaseDate = releaseDate;

  String? _overview;
  String? get overview => _$this._overview;
  set overview(String? overview) => _$this._overview = overview;

  MovieDetailsBuilder();

  MovieDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _originalTitle = $v.originalTitle;
      _posterPath = $v.posterPath;
      _backdropPath = $v.backdropPath;
      _status = $v.status;
      _runtime = $v.runtime;
      _budget = $v.budget;
      _revenue = $v.revenue;
      _imdb = $v.imdb;
      _voteRating = $v.voteRating;
      _releaseDate = $v.releaseDate;
      _overview = $v.overview;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovieDetails;
  }

  @override
  void update(void Function(MovieDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovieDetails build() => _build();

  _$MovieDetails _build() {
    final _$result = _$v ??
        new _$MovieDetails._(
            id: id,
            originalTitle: originalTitle,
            posterPath: posterPath,
            backdropPath: backdropPath,
            status: status,
            runtime: runtime,
            budget: budget,
            revenue: revenue,
            imdb: imdb,
            voteRating: voteRating,
            releaseDate: releaseDate,
            overview: overview);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
