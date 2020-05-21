// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'baseUser.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BaseUser extends BaseUser {
  @override
  final String uid;
  @override
  final String username;
  @override
  final String gender;
  @override
  final String foodie_level;
  @override
  final String photoUrl;
  @override
  final String foodie_color;
  @override
  final String primaryLocation;

  factory _$BaseUser([void Function(BaseUserBuilder) updates]) =>
      (new BaseUserBuilder()..update(updates)).build();

  _$BaseUser._(
      {this.uid,
      this.username,
      this.gender,
      this.foodie_level,
      this.photoUrl,
      this.foodie_color,
      this.primaryLocation})
      : super._() {
    if (uid == null) {
      throw new BuiltValueNullFieldError('BaseUser', 'uid');
    }
    if (username == null) {
      throw new BuiltValueNullFieldError('BaseUser', 'username');
    }
    if (gender == null) {
      throw new BuiltValueNullFieldError('BaseUser', 'gender');
    }
    if (foodie_level == null) {
      throw new BuiltValueNullFieldError('BaseUser', 'foodie_level');
    }
    if (photoUrl == null) {
      throw new BuiltValueNullFieldError('BaseUser', 'photoUrl');
    }
    if (foodie_color == null) {
      throw new BuiltValueNullFieldError('BaseUser', 'foodie_color');
    }
    if (primaryLocation == null) {
      throw new BuiltValueNullFieldError('BaseUser', 'primaryLocation');
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
        gender == other.gender &&
        foodie_level == other.foodie_level &&
        photoUrl == other.photoUrl &&
        foodie_color == other.foodie_color &&
        primaryLocation == other.primaryLocation;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, uid.hashCode), username.hashCode),
                        gender.hashCode),
                    foodie_level.hashCode),
                photoUrl.hashCode),
            foodie_color.hashCode),
        primaryLocation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BaseUser')
          ..add('uid', uid)
          ..add('username', username)
          ..add('gender', gender)
          ..add('foodie_level', foodie_level)
          ..add('photoUrl', photoUrl)
          ..add('foodie_color', foodie_color)
          ..add('primaryLocation', primaryLocation))
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

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

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

  BaseUserBuilder();

  BaseUserBuilder get _$this {
    if (_$v != null) {
      _uid = _$v.uid;
      _username = _$v.username;
      _gender = _$v.gender;
      _foodie_level = _$v.foodie_level;
      _photoUrl = _$v.photoUrl;
      _foodie_color = _$v.foodie_color;
      _primaryLocation = _$v.primaryLocation;
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
            gender: gender,
            foodie_level: foodie_level,
            photoUrl: photoUrl,
            foodie_color: foodie_color,
            primaryLocation: primaryLocation);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
