// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yelpLocation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<YelpLocation> _$yelpLocationSerializer =
    new _$YelpLocationSerializer();

class _$YelpLocationSerializer implements StructuredSerializer<YelpLocation> {
  @override
  final Iterable<Type> types = const [YelpLocation, _$YelpLocation];
  @override
  final String wireName = 'YelpLocation';

  @override
  Iterable<Object> serialize(Serializers serializers, YelpLocation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'address1',
      serializers.serialize(object.address1,
          specifiedType: const FullType(String)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
      'zip_code',
      serializers.serialize(object.zip_code,
          specifiedType: const FullType(String)),
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'display_address',
      serializers.serialize(object.display_address,
          specifiedType: const FullType(List, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  YelpLocation deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new YelpLocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'address1':
          result.address1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'zip_code':
          result.zip_code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_address':
          result.display_address = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(String)]))
              as List<String>;
          break;
      }
    }

    return result.build();
  }
}

class _$YelpLocation extends YelpLocation {
  @override
  final String address1;
  @override
  final String city;
  @override
  final String zip_code;
  @override
  final String country;
  @override
  final List<String> display_address;

  factory _$YelpLocation([void Function(YelpLocationBuilder) updates]) =>
      (new YelpLocationBuilder()..update(updates)).build();

  _$YelpLocation._(
      {this.address1,
      this.city,
      this.zip_code,
      this.country,
      this.display_address})
      : super._() {
    if (address1 == null) {
      throw new BuiltValueNullFieldError('YelpLocation', 'address1');
    }
    if (city == null) {
      throw new BuiltValueNullFieldError('YelpLocation', 'city');
    }
    if (zip_code == null) {
      throw new BuiltValueNullFieldError('YelpLocation', 'zip_code');
    }
    if (country == null) {
      throw new BuiltValueNullFieldError('YelpLocation', 'country');
    }
    if (display_address == null) {
      throw new BuiltValueNullFieldError('YelpLocation', 'display_address');
    }
  }

  @override
  YelpLocation rebuild(void Function(YelpLocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  YelpLocationBuilder toBuilder() => new YelpLocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is YelpLocation &&
        address1 == other.address1 &&
        city == other.city &&
        zip_code == other.zip_code &&
        country == other.country &&
        display_address == other.display_address;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, address1.hashCode), city.hashCode),
                zip_code.hashCode),
            country.hashCode),
        display_address.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('YelpLocation')
          ..add('address1', address1)
          ..add('city', city)
          ..add('zip_code', zip_code)
          ..add('country', country)
          ..add('display_address', display_address))
        .toString();
  }
}

class YelpLocationBuilder
    implements Builder<YelpLocation, YelpLocationBuilder> {
  _$YelpLocation _$v;

  String _address1;
  String get address1 => _$this._address1;
  set address1(String address1) => _$this._address1 = address1;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _zip_code;
  String get zip_code => _$this._zip_code;
  set zip_code(String zip_code) => _$this._zip_code = zip_code;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  List<String> _display_address;
  List<String> get display_address => _$this._display_address;
  set display_address(List<String> display_address) =>
      _$this._display_address = display_address;

  YelpLocationBuilder();

  YelpLocationBuilder get _$this {
    if (_$v != null) {
      _address1 = _$v.address1;
      _city = _$v.city;
      _zip_code = _$v.zip_code;
      _country = _$v.country;
      _display_address = _$v.display_address;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(YelpLocation other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$YelpLocation;
  }

  @override
  void update(void Function(YelpLocationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$YelpLocation build() {
    final _$result = _$v ??
        new _$YelpLocation._(
            address1: address1,
            city: city,
            zip_code: zip_code,
            country: country,
            display_address: display_address);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
