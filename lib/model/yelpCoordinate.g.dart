// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yelpCoordinate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<YelpCoordinate> _$yelpCoordinateSerializer =
    new _$YelpCoordinateSerializer();

class _$YelpCoordinateSerializer
    implements StructuredSerializer<YelpCoordinate> {
  @override
  final Iterable<Type> types = const [YelpCoordinate, _$YelpCoordinate];
  @override
  final String wireName = 'YelpCoordinate';

  @override
  Iterable<Object> serialize(Serializers serializers, YelpCoordinate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'latitude',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(double)),
      'longitude',
      serializers.serialize(object.longitude,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  YelpCoordinate deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new YelpCoordinateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$YelpCoordinate extends YelpCoordinate {
  @override
  final double latitude;
  @override
  final double longitude;

  factory _$YelpCoordinate([void Function(YelpCoordinateBuilder) updates]) =>
      (new YelpCoordinateBuilder()..update(updates)).build();

  _$YelpCoordinate._({this.latitude, this.longitude}) : super._() {
    if (latitude == null) {
      throw new BuiltValueNullFieldError('YelpCoordinate', 'latitude');
    }
    if (longitude == null) {
      throw new BuiltValueNullFieldError('YelpCoordinate', 'longitude');
    }
  }

  @override
  YelpCoordinate rebuild(void Function(YelpCoordinateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  YelpCoordinateBuilder toBuilder() =>
      new YelpCoordinateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is YelpCoordinate &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, latitude.hashCode), longitude.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('YelpCoordinate')
          ..add('latitude', latitude)
          ..add('longitude', longitude))
        .toString();
  }
}

class YelpCoordinateBuilder
    implements Builder<YelpCoordinate, YelpCoordinateBuilder> {
  _$YelpCoordinate _$v;

  double _latitude;
  double get latitude => _$this._latitude;
  set latitude(double latitude) => _$this._latitude = latitude;

  double _longitude;
  double get longitude => _$this._longitude;
  set longitude(double longitude) => _$this._longitude = longitude;

  YelpCoordinateBuilder();

  YelpCoordinateBuilder get _$this {
    if (_$v != null) {
      _latitude = _$v.latitude;
      _longitude = _$v.longitude;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(YelpCoordinate other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$YelpCoordinate;
  }

  @override
  void update(void Function(YelpCoordinateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$YelpCoordinate build() {
    final _$result =
        _$v ?? new _$YelpCoordinate._(latitude: latitude, longitude: longitude);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
