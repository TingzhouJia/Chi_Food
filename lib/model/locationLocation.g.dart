// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locationLocation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LocationLocation extends LocationLocation {
  @override
  final String entity_type;
  @override
  final int entity_id;
  @override
  final String title;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final int city_id;
  @override
  final int country_id;
  @override
  final String city_name;
  @override
  final String country_name;

  factory _$LocationLocation(
          [void Function(LocationLocationBuilder) updates]) =>
      (new LocationLocationBuilder()..update(updates)).build();

  _$LocationLocation._(
      {this.entity_type,
      this.entity_id,
      this.title,
      this.latitude,
      this.longitude,
      this.city_id,
      this.country_id,
      this.city_name,
      this.country_name})
      : super._() {
    if (entity_type == null) {
      throw new BuiltValueNullFieldError('LocationLocation', 'entity_type');
    }
    if (entity_id == null) {
      throw new BuiltValueNullFieldError('LocationLocation', 'entity_id');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('LocationLocation', 'title');
    }
    if (latitude == null) {
      throw new BuiltValueNullFieldError('LocationLocation', 'latitude');
    }
    if (longitude == null) {
      throw new BuiltValueNullFieldError('LocationLocation', 'longitude');
    }
    if (city_id == null) {
      throw new BuiltValueNullFieldError('LocationLocation', 'city_id');
    }
    if (country_id == null) {
      throw new BuiltValueNullFieldError('LocationLocation', 'country_id');
    }
    if (city_name == null) {
      throw new BuiltValueNullFieldError('LocationLocation', 'city_name');
    }
    if (country_name == null) {
      throw new BuiltValueNullFieldError('LocationLocation', 'country_name');
    }
  }

  @override
  LocationLocation rebuild(void Function(LocationLocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationLocationBuilder toBuilder() =>
      new LocationLocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocationLocation &&
        entity_type == other.entity_type &&
        entity_id == other.entity_id &&
        title == other.title &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        city_id == other.city_id &&
        country_id == other.country_id &&
        city_name == other.city_name &&
        country_name == other.country_name;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, entity_type.hashCode),
                                    entity_id.hashCode),
                                title.hashCode),
                            latitude.hashCode),
                        longitude.hashCode),
                    city_id.hashCode),
                country_id.hashCode),
            city_name.hashCode),
        country_name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LocationLocation')
          ..add('entity_type', entity_type)
          ..add('entity_id', entity_id)
          ..add('title', title)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('city_id', city_id)
          ..add('country_id', country_id)
          ..add('city_name', city_name)
          ..add('country_name', country_name))
        .toString();
  }
}

class LocationLocationBuilder
    implements Builder<LocationLocation, LocationLocationBuilder> {
  _$LocationLocation _$v;

  String _entity_type;
  String get entity_type => _$this._entity_type;
  set entity_type(String entity_type) => _$this._entity_type = entity_type;

  int _entity_id;
  int get entity_id => _$this._entity_id;
  set entity_id(int entity_id) => _$this._entity_id = entity_id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  double _latitude;
  double get latitude => _$this._latitude;
  set latitude(double latitude) => _$this._latitude = latitude;

  double _longitude;
  double get longitude => _$this._longitude;
  set longitude(double longitude) => _$this._longitude = longitude;

  int _city_id;
  int get city_id => _$this._city_id;
  set city_id(int city_id) => _$this._city_id = city_id;

  int _country_id;
  int get country_id => _$this._country_id;
  set country_id(int country_id) => _$this._country_id = country_id;

  String _city_name;
  String get city_name => _$this._city_name;
  set city_name(String city_name) => _$this._city_name = city_name;

  String _country_name;
  String get country_name => _$this._country_name;
  set country_name(String country_name) => _$this._country_name = country_name;

  LocationLocationBuilder();

  LocationLocationBuilder get _$this {
    if (_$v != null) {
      _entity_type = _$v.entity_type;
      _entity_id = _$v.entity_id;
      _title = _$v.title;
      _latitude = _$v.latitude;
      _longitude = _$v.longitude;
      _city_id = _$v.city_id;
      _country_id = _$v.country_id;
      _city_name = _$v.city_name;
      _country_name = _$v.country_name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocationLocation other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LocationLocation;
  }

  @override
  void update(void Function(LocationLocationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LocationLocation build() {
    final _$result = _$v ??
        new _$LocationLocation._(
            entity_type: entity_type,
            entity_id: entity_id,
            title: title,
            latitude: latitude,
            longitude: longitude,
            city_id: city_id,
            country_id: country_id,
            city_name: city_name,
            country_name: country_name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
