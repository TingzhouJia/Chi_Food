// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locationDetail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocationDetail> _$locationDetailSerializer =
    new _$LocationDetailSerializer();

class _$LocationDetailSerializer
    implements StructuredSerializer<LocationDetail> {
  @override
  final Iterable<Type> types = const [LocationDetail, _$LocationDetail];
  @override
  final String wireName = 'LocationDetail';

  @override
  Iterable<Object> serialize(Serializers serializers, LocationDetail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'popularity',
      serializers.serialize(object.popularity,
          specifiedType: const FullType(Popularity)),
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(LocationLocation)),
      'best_rated_restaurants',
      serializers.serialize(object.best_rated_restaurants,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Restaurants)])),
    ];

    return result;
  }

  @override
  LocationDetail deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationDetailBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'popularity':
          result.popularity.replace(serializers.deserialize(value,
              specifiedType: const FullType(Popularity)) as Popularity);
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
                  specifiedType: const FullType(LocationLocation))
              as LocationLocation);
          break;
        case 'best_rated_restaurants':
          result.best_rated_restaurants.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Restaurants)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$LocationDetail extends LocationDetail {
  @override
  final Popularity popularity;
  @override
  final LocationLocation location;
  @override
  final BuiltList<Restaurants> best_rated_restaurants;

  factory _$LocationDetail([void Function(LocationDetailBuilder) updates]) =>
      (new LocationDetailBuilder()..update(updates)).build();

  _$LocationDetail._(
      {this.popularity, this.location, this.best_rated_restaurants})
      : super._() {
    if (popularity == null) {
      throw new BuiltValueNullFieldError('LocationDetail', 'popularity');
    }
    if (location == null) {
      throw new BuiltValueNullFieldError('LocationDetail', 'location');
    }
    if (best_rated_restaurants == null) {
      throw new BuiltValueNullFieldError(
          'LocationDetail', 'best_rated_restaurants');
    }
  }

  @override
  LocationDetail rebuild(void Function(LocationDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationDetailBuilder toBuilder() =>
      new LocationDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocationDetail &&
        popularity == other.popularity &&
        location == other.location &&
        best_rated_restaurants == other.best_rated_restaurants;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, popularity.hashCode), location.hashCode),
        best_rated_restaurants.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LocationDetail')
          ..add('popularity', popularity)
          ..add('location', location)
          ..add('best_rated_restaurants', best_rated_restaurants))
        .toString();
  }
}

class LocationDetailBuilder
    implements Builder<LocationDetail, LocationDetailBuilder> {
  _$LocationDetail _$v;

  PopularityBuilder _popularity;
  PopularityBuilder get popularity =>
      _$this._popularity ??= new PopularityBuilder();
  set popularity(PopularityBuilder popularity) =>
      _$this._popularity = popularity;

  LocationLocationBuilder _location;
  LocationLocationBuilder get location =>
      _$this._location ??= new LocationLocationBuilder();
  set location(LocationLocationBuilder location) => _$this._location = location;

  ListBuilder<Restaurants> _best_rated_restaurants;
  ListBuilder<Restaurants> get best_rated_restaurants =>
      _$this._best_rated_restaurants ??= new ListBuilder<Restaurants>();
  set best_rated_restaurants(ListBuilder<Restaurants> best_rated_restaurants) =>
      _$this._best_rated_restaurants = best_rated_restaurants;

  LocationDetailBuilder();

  LocationDetailBuilder get _$this {
    if (_$v != null) {
      _popularity = _$v.popularity?.toBuilder();
      _location = _$v.location?.toBuilder();
      _best_rated_restaurants = _$v.best_rated_restaurants?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocationDetail other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LocationDetail;
  }

  @override
  void update(void Function(LocationDetailBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LocationDetail build() {
    _$LocationDetail _$result;
    try {
      _$result = _$v ??
          new _$LocationDetail._(
              popularity: popularity.build(),
              location: location.build(),
              best_rated_restaurants: best_rated_restaurants.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'popularity';
        popularity.build();
        _$failedField = 'location';
        location.build();
        _$failedField = 'best_rated_restaurants';
        best_rated_restaurants.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LocationDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
