// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geoLocation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GeoLocation> _$geoLocationSerializer = new _$GeoLocationSerializer();

class _$GeoLocationSerializer implements StructuredSerializer<GeoLocation> {
  @override
  final Iterable<Type> types = const [GeoLocation, _$GeoLocation];
  @override
  final String wireName = 'GeoLocation';

  @override
  Iterable<Object> serialize(Serializers serializers, GeoLocation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(LocationLocation)),
      'popularity',
      serializers.serialize(object.popularity,
          specifiedType: const FullType(Popularity)),
      'nearby_restaurants',
      serializers.serialize(object.nearby_restaurants,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Restaurants)])),
    ];

    return result;
  }

  @override
  GeoLocation deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GeoLocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'location':
          result.location.replace(serializers.deserialize(value,
                  specifiedType: const FullType(LocationLocation))
              as LocationLocation);
          break;
        case 'popularity':
          result.popularity.replace(serializers.deserialize(value,
              specifiedType: const FullType(Popularity)) as Popularity);
          break;
        case 'nearby_restaurants':
          result.nearby_restaurants.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Restaurants)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GeoLocation extends GeoLocation {
  @override
  final LocationLocation location;
  @override
  final Popularity popularity;
  @override
  final BuiltList<Restaurants> nearby_restaurants;

  factory _$GeoLocation([void Function(GeoLocationBuilder) updates]) =>
      (new GeoLocationBuilder()..update(updates)).build();

  _$GeoLocation._({this.location, this.popularity, this.nearby_restaurants})
      : super._() {
    if (location == null) {
      throw new BuiltValueNullFieldError('GeoLocation', 'location');
    }
    if (popularity == null) {
      throw new BuiltValueNullFieldError('GeoLocation', 'popularity');
    }
    if (nearby_restaurants == null) {
      throw new BuiltValueNullFieldError('GeoLocation', 'nearby_restaurants');
    }
  }

  @override
  GeoLocation rebuild(void Function(GeoLocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GeoLocationBuilder toBuilder() => new GeoLocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeoLocation &&
        location == other.location &&
        popularity == other.popularity &&
        nearby_restaurants == other.nearby_restaurants;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, location.hashCode), popularity.hashCode),
        nearby_restaurants.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GeoLocation')
          ..add('location', location)
          ..add('popularity', popularity)
          ..add('nearby_restaurants', nearby_restaurants))
        .toString();
  }
}

class GeoLocationBuilder implements Builder<GeoLocation, GeoLocationBuilder> {
  _$GeoLocation _$v;

  LocationLocationBuilder _location;
  LocationLocationBuilder get location =>
      _$this._location ??= new LocationLocationBuilder();
  set location(LocationLocationBuilder location) => _$this._location = location;

  PopularityBuilder _popularity;
  PopularityBuilder get popularity =>
      _$this._popularity ??= new PopularityBuilder();
  set popularity(PopularityBuilder popularity) =>
      _$this._popularity = popularity;

  ListBuilder<Restaurants> _nearby_restaurants;
  ListBuilder<Restaurants> get nearby_restaurants =>
      _$this._nearby_restaurants ??= new ListBuilder<Restaurants>();
  set nearby_restaurants(ListBuilder<Restaurants> nearby_restaurants) =>
      _$this._nearby_restaurants = nearby_restaurants;

  GeoLocationBuilder();

  GeoLocationBuilder get _$this {
    if (_$v != null) {
      _location = _$v.location?.toBuilder();
      _popularity = _$v.popularity?.toBuilder();
      _nearby_restaurants = _$v.nearby_restaurants?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GeoLocation other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GeoLocation;
  }

  @override
  void update(void Function(GeoLocationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GeoLocation build() {
    _$GeoLocation _$result;
    try {
      _$result = _$v ??
          new _$GeoLocation._(
              location: location.build(),
              popularity: popularity.build(),
              nearby_restaurants: nearby_restaurants.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'location';
        location.build();
        _$failedField = 'popularity';
        popularity.build();
        _$failedField = 'nearby_restaurants';
        nearby_restaurants.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GeoLocation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
