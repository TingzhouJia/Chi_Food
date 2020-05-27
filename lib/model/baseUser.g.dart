// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'baseUser.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BaseUser> _$baseUserSerializer = new _$BaseUserSerializer();

class _$BaseUserSerializer implements StructuredSerializer<BaseUser> {
  @override
  final Iterable<Type> types = const [BaseUser, _$BaseUser];
  @override
  final String wireName = 'BaseUser';

  @override
  Iterable<Object> serialize(Serializers serializers, BaseUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'foodie_color',
      serializers.serialize(object.foodie_color,
          specifiedType: const FullType(String)),
      'primaryLocation',
      serializers.serialize(object.primaryLocation,
          specifiedType: const FullType(String)),
      'cityId',
      serializers.serialize(object.cityId, specifiedType: const FullType(int)),
      'entityType',
      serializers.serialize(object.entityType,
          specifiedType: const FullType(String)),
      'entityId',
      serializers.serialize(object.entityId,
          specifiedType: const FullType(int)),
      'long',
      serializers.serialize(object.long, specifiedType: const FullType(String)),
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(String)),
    ];
    if (object.uid != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(object.uid,
            specifiedType: const FullType(String)));
    }
    if (object.foodie_level != null) {
      result
        ..add('foodie_level')
        ..add(serializers.serialize(object.foodie_level,
            specifiedType: const FullType(String)));
    }
    if (object.photoUrl != null) {
      result
        ..add('photoUrl')
        ..add(serializers.serialize(object.photoUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BaseUser deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BaseUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'foodie_level':
          result.foodie_level = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photoUrl':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'foodie_color':
          result.foodie_color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'primaryLocation':
          result.primaryLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cityId':
          result.cityId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'entityType':
          result.entityType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'entityId':
          result.entityId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'long':
          result.long = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BaseUser extends BaseUser {
  @override
  final String uid;
  @override
  final String username;
  @override
  final String foodie_level;
  @override
  final String photoUrl;
  @override
  final String foodie_color;
  @override
  final String primaryLocation;
  @override
  final int cityId;
  @override
  final String entityType;
  @override
  final int entityId;
  @override
  final String long;
  @override
  final String lat;

  factory _$BaseUser([void Function(BaseUserBuilder) updates]) =>
      (new BaseUserBuilder()..update(updates)).build();

  _$BaseUser._(
      {this.uid,
      this.username,
      this.foodie_level,
      this.photoUrl,
      this.foodie_color,
      this.primaryLocation,
      this.cityId,
      this.entityType,
      this.entityId,
      this.long,
      this.lat})
      : super._() {
    if (username == null) {
      throw new BuiltValueNullFieldError('BaseUser', 'username');
    }
    if (foodie_color == null) {
      throw new BuiltValueNullFieldError('BaseUser', 'foodie_color');
    }
    if (primaryLocation == null) {
      throw new BuiltValueNullFieldError('BaseUser', 'primaryLocation');
    }
    if (cityId == null) {
      throw new BuiltValueNullFieldError('BaseUser', 'cityId');
    }
    if (entityType == null) {
      throw new BuiltValueNullFieldError('BaseUser', 'entityType');
    }
    if (entityId == null) {
      throw new BuiltValueNullFieldError('BaseUser', 'entityId');
    }
    if (long == null) {
      throw new BuiltValueNullFieldError('BaseUser', 'long');
    }
    if (lat == null) {
      throw new BuiltValueNullFieldError('BaseUser', 'lat');
    }
  }

  @override
  BaseUser rebuild(void Function(BaseUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseUserBuilder toBuilder() => new BaseUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseUser &&
        uid == other.uid &&
        username == other.username &&
        foodie_level == other.foodie_level &&
        photoUrl == other.photoUrl &&
        foodie_color == other.foodie_color &&
        primaryLocation == other.primaryLocation &&
        cityId == other.cityId &&
        entityType == other.entityType &&
        entityId == other.entityId &&
        long == other.long &&
        lat == other.lat;
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
                                $jc(
                                    $jc(
                                        $jc($jc(0, uid.hashCode),
                                            username.hashCode),
                                        foodie_level.hashCode),
                                    photoUrl.hashCode),
                                foodie_color.hashCode),
                            primaryLocation.hashCode),
                        cityId.hashCode),
                    entityType.hashCode),
                entityId.hashCode),
            long.hashCode),
        lat.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BaseUser')
          ..add('uid', uid)
          ..add('username', username)
          ..add('foodie_level', foodie_level)
          ..add('photoUrl', photoUrl)
          ..add('foodie_color', foodie_color)
          ..add('primaryLocation', primaryLocation)
          ..add('cityId', cityId)
          ..add('entityType', entityType)
          ..add('entityId', entityId)
          ..add('long', long)
          ..add('lat', lat))
        .toString();
  }
}

class BaseUserBuilder implements Builder<BaseUser, BaseUserBuilder> {
  _$BaseUser _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _foodie_level;
  String get foodie_level => _$this._foodie_level;
  set foodie_level(String foodie_level) => _$this._foodie_level = foodie_level;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _foodie_color;
  String get foodie_color => _$this._foodie_color;
  set foodie_color(String foodie_color) => _$this._foodie_color = foodie_color;

  String _primaryLocation;
  String get primaryLocation => _$this._primaryLocation;
  set primaryLocation(String primaryLocation) =>
      _$this._primaryLocation = primaryLocation;

  int _cityId;
  int get cityId => _$this._cityId;
  set cityId(int cityId) => _$this._cityId = cityId;

  String _entityType;
  String get entityType => _$this._entityType;
  set entityType(String entityType) => _$this._entityType = entityType;

  int _entityId;
  int get entityId => _$this._entityId;
  set entityId(int entityId) => _$this._entityId = entityId;

  String _long;
  String get long => _$this._long;
  set long(String long) => _$this._long = long;

  String _lat;
  String get lat => _$this._lat;
  set lat(String lat) => _$this._lat = lat;

  BaseUserBuilder();

  BaseUserBuilder get _$this {
    if (_$v != null) {
      _uid = _$v.uid;
      _username = _$v.username;
      _foodie_level = _$v.foodie_level;
      _photoUrl = _$v.photoUrl;
      _foodie_color = _$v.foodie_color;
      _primaryLocation = _$v.primaryLocation;
      _cityId = _$v.cityId;
      _entityType = _$v.entityType;
      _entityId = _$v.entityId;
      _long = _$v.long;
      _lat = _$v.lat;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseUser other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BaseUser;
  }

  @override
  void update(void Function(BaseUserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BaseUser build() {
    final _$result = _$v ??
        new _$BaseUser._(
            uid: uid,
            username: username,
            foodie_level: foodie_level,
            photoUrl: photoUrl,
            foodie_color: foodie_color,
            primaryLocation: primaryLocation,
            cityId: cityId,
            entityType: entityType,
            entityId: entityId,
            long: long,
            lat: lat);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
