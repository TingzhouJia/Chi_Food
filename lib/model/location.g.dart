// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Location> _$locationSerializer = new _$LocationSerializer();

class _$LocationSerializer implements StructuredSerializer<Location> {
  @override
  final Iterable<Type> types = const [Location, _$Location];
  @override
  final String wireName = 'Location';

  @override
  Iterable<Object> serialize(Serializers serializers, Location object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'latitude',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(String)),
      'longitude',
      serializers.serialize(object.longitude,
          specifiedType: const FullType(String)),
      'zipcode',
      serializers.serialize(object.zipcode,
          specifiedType: const FullType(String)),
      'country_id',
      serializers.serialize(object.country_id,
          specifiedType: const FullType(num)),
    ];
    if (object.locality != null) {
      result
        ..add('locality')
        ..add(serializers.serialize(object.locality,
            specifiedType: const FullType(String)));
    }
    if (object.address != null) {
      result
        ..add('address')
        ..add(serializers.serialize(object.address,
            specifiedType: const FullType(String)));
    }
    if (object.city != null) {
      result
        ..add('city')
        ..add(serializers.serialize(object.city,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Location deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'locality':
          result.locality = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'zipcode':
          result.zipcode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country_id':
          result.country_id = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
      }
    }

    return result.build();
  }
}

class _$Location extends Location {
  @override
  final String locality;
  @override
  final String address;
  @override
  final String city;
  @override
  final String latitude;
  @override
  final String longitude;
  @override
  final String zipcode;
  @override
  final num country_id;

  factory _$Location([void Function(LocationBuilder) updates]) =>
      (new LocationBuilder()..update(updates)).build();

  _$Location._(
      {this.locality,
      this.address,
      this.city,
      this.latitude,
      this.longitude,
      this.zipcode,
      this.country_id})
      : super._() {
    if (latitude == null) {
      throw new BuiltValueNullFieldError('Location', 'latitude');
    }
    if (longitude == null) {
      throw new BuiltValueNullFieldError('Location', 'longitude');
    }
    if (zipcode == null) {
      throw new BuiltValueNullFieldError('Location', 'zipcode');
    }
    if (country_id == null) {
      throw new BuiltValueNullFieldError('Location', 'country_id');
    }
  }

  @override
  Location rebuild(void Function(LocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationBuilder toBuilder() => new LocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Location &&
        locality == other.locality &&
        address == other.address &&
        city == other.city &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        zipcode == other.zipcode &&
        country_id == other.country_id;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, locality.hashCode), address.hashCode),
                        city.hashCode),
                    latitude.hashCode),
                longitude.hashCode),
            zipcode.hashCode),
        country_id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Location')
          ..add('locality', locality)
          ..add('address', address)
          ..add('city', city)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('zipcode', zipcode)
          ..add('country_id', country_id))
        .toString();
  }
}

class LocationBuilder implements Builder<Location, LocationBuilder> {
  _$Location _$v;

  String _locality;
  String get locality => _$this._locality;
  set locality(String locality) => _$this._locality = locality;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _latitude;
  String get latitude => _$this._latitude;
  set latitude(String latitude) => _$this._latitude = latitude;

  String _longitude;
  String get longitude => _$this._longitude;
  set longitude(String longitude) => _$this._longitude = longitude;

  String _zipcode;
  String get zipcode => _$this._zipcode;
  set zipcode(String zipcode) => _$this._zipcode = zipcode;

  num _country_id;
  num get country_id => _$this._country_id;
  set country_id(num country_id) => _$this._country_id = country_id;

  LocationBuilder();

  LocationBuilder get _$this {
    if (_$v != null) {
      _locality = _$v.locality;
      _address = _$v.address;
      _city = _$v.city;
      _latitude = _$v.latitude;
      _longitude = _$v.longitude;
      _zipcode = _$v.zipcode;
      _country_id = _$v.country_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Location other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Location;
  }

  @override
  void update(void Function(LocationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Location build() {
    final _$result = _$v ??
        new _$Location._(
            locality: locality,
            address: address,
            city: city,
            latitude: latitude,
            longitude: longitude,
            zipcode: zipcode,
            country_id: country_id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
