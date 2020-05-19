// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Location extends Location {
  @override
  final String address;
  @override
  final String locality;
  @override
  final String city;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final num zipcode;
  @override
  final num country_id;

  factory _$Location([void Function(LocationBuilder) updates]) =>
      (new LocationBuilder()..update(updates)).build();

  _$Location._(
      {this.address,
      this.locality,
      this.city,
      this.latitude,
      this.longitude,
      this.zipcode,
      this.country_id})
      : super._() {
    if (address == null) {
      throw new BuiltValueNullFieldError('Location', 'address');
    }
    if (locality == null) {
      throw new BuiltValueNullFieldError('Location', 'locality');
    }
    if (city == null) {
      throw new BuiltValueNullFieldError('Location', 'city');
    }
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
        address == other.address &&
        locality == other.locality &&
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
                    $jc($jc($jc(0, address.hashCode), locality.hashCode),
                        city.hashCode),
                    latitude.hashCode),
                longitude.hashCode),
            zipcode.hashCode),
        country_id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Location')
          ..add('address', address)
          ..add('locality', locality)
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

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _locality;
  String get locality => _$this._locality;
  set locality(String locality) => _$this._locality = locality;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  double _latitude;
  double get latitude => _$this._latitude;
  set latitude(double latitude) => _$this._latitude = latitude;

  double _longitude;
  double get longitude => _$this._longitude;
  set longitude(double longitude) => _$this._longitude = longitude;

  num _zipcode;
  num get zipcode => _$this._zipcode;
  set zipcode(num zipcode) => _$this._zipcode = zipcode;

  num _country_id;
  num get country_id => _$this._country_id;
  set country_id(num country_id) => _$this._country_id = country_id;

  LocationBuilder();

  LocationBuilder get _$this {
    if (_$v != null) {
      _address = _$v.address;
      _locality = _$v.locality;
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
            address: address,
            locality: locality,
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
