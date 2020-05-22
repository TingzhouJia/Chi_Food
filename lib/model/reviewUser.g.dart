// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviewUser.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReviewUser> _$reviewUserSerializer = new _$ReviewUserSerializer();

class _$ReviewUserSerializer implements StructuredSerializer<ReviewUser> {
  @override
  final Iterable<Type> types = const [ReviewUser, _$ReviewUser];
  @override
  final String wireName = 'ReviewUser';

  @override
  Iterable<Object> serialize(Serializers serializers, ReviewUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'zomato_handle',
      serializers.serialize(object.zomato_handle,
          specifiedType: const FullType(String)),
      'foodie_level',
      serializers.serialize(object.foodie_level,
          specifiedType: const FullType(String)),
      'foodie_level_num',
      serializers.serialize(object.foodie_level_num,
          specifiedType: const FullType(num)),
      'foodie_color',
      serializers.serialize(object.foodie_color,
          specifiedType: const FullType(String)),
      'profile_url',
      serializers.serialize(object.profile_url,
          specifiedType: const FullType(String)),
      'profile_deeplink',
      serializers.serialize(object.profile_deeplink,
          specifiedType: const FullType(String)),
      'profile_image',
      serializers.serialize(object.profile_image,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ReviewUser deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReviewUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'zomato_handle':
          result.zomato_handle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'foodie_level':
          result.foodie_level = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'foodie_level_num':
          result.foodie_level_num = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'foodie_color':
          result.foodie_color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profile_url':
          result.profile_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profile_deeplink':
          result.profile_deeplink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profile_image':
          result.profile_image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ReviewUser extends ReviewUser {
  @override
  final String name;
  @override
  final String zomato_handle;
  @override
  final String foodie_level;
  @override
  final num foodie_level_num;
  @override
  final String foodie_color;
  @override
  final String profile_url;
  @override
  final String profile_deeplink;
  @override
  final String profile_image;

  factory _$ReviewUser([void Function(ReviewUserBuilder) updates]) =>
      (new ReviewUserBuilder()..update(updates)).build();

  _$ReviewUser._(
      {this.name,
      this.zomato_handle,
      this.foodie_level,
      this.foodie_level_num,
      this.foodie_color,
      this.profile_url,
      this.profile_deeplink,
      this.profile_image})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('ReviewUser', 'name');
    }
    if (zomato_handle == null) {
      throw new BuiltValueNullFieldError('ReviewUser', 'zomato_handle');
    }
    if (foodie_level == null) {
      throw new BuiltValueNullFieldError('ReviewUser', 'foodie_level');
    }
    if (foodie_level_num == null) {
      throw new BuiltValueNullFieldError('ReviewUser', 'foodie_level_num');
    }
    if (foodie_color == null) {
      throw new BuiltValueNullFieldError('ReviewUser', 'foodie_color');
    }
    if (profile_url == null) {
      throw new BuiltValueNullFieldError('ReviewUser', 'profile_url');
    }
    if (profile_deeplink == null) {
      throw new BuiltValueNullFieldError('ReviewUser', 'profile_deeplink');
    }
    if (profile_image == null) {
      throw new BuiltValueNullFieldError('ReviewUser', 'profile_image');
    }
  }

  @override
  ReviewUser rebuild(void Function(ReviewUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewUserBuilder toBuilder() => new ReviewUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewUser &&
        name == other.name &&
        zomato_handle == other.zomato_handle &&
        foodie_level == other.foodie_level &&
        foodie_level_num == other.foodie_level_num &&
        foodie_color == other.foodie_color &&
        profile_url == other.profile_url &&
        profile_deeplink == other.profile_deeplink &&
        profile_image == other.profile_image;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, name.hashCode), zomato_handle.hashCode),
                            foodie_level.hashCode),
                        foodie_level_num.hashCode),
                    foodie_color.hashCode),
                profile_url.hashCode),
            profile_deeplink.hashCode),
        profile_image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReviewUser')
          ..add('name', name)
          ..add('zomato_handle', zomato_handle)
          ..add('foodie_level', foodie_level)
          ..add('foodie_level_num', foodie_level_num)
          ..add('foodie_color', foodie_color)
          ..add('profile_url', profile_url)
          ..add('profile_deeplink', profile_deeplink)
          ..add('profile_image', profile_image))
        .toString();
  }
}

class ReviewUserBuilder implements Builder<ReviewUser, ReviewUserBuilder> {
  _$ReviewUser _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _zomato_handle;
  String get zomato_handle => _$this._zomato_handle;
  set zomato_handle(String zomato_handle) =>
      _$this._zomato_handle = zomato_handle;

  String _foodie_level;
  String get foodie_level => _$this._foodie_level;
  set foodie_level(String foodie_level) => _$this._foodie_level = foodie_level;

  num _foodie_level_num;
  num get foodie_level_num => _$this._foodie_level_num;
  set foodie_level_num(num foodie_level_num) =>
      _$this._foodie_level_num = foodie_level_num;

  String _foodie_color;
  String get foodie_color => _$this._foodie_color;
  set foodie_color(String foodie_color) => _$this._foodie_color = foodie_color;

  String _profile_url;
  String get profile_url => _$this._profile_url;
  set profile_url(String profile_url) => _$this._profile_url = profile_url;

  String _profile_deeplink;
  String get profile_deeplink => _$this._profile_deeplink;
  set profile_deeplink(String profile_deeplink) =>
      _$this._profile_deeplink = profile_deeplink;

  String _profile_image;
  String get profile_image => _$this._profile_image;
  set profile_image(String profile_image) =>
      _$this._profile_image = profile_image;

  ReviewUserBuilder();

  ReviewUserBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _zomato_handle = _$v.zomato_handle;
      _foodie_level = _$v.foodie_level;
      _foodie_level_num = _$v.foodie_level_num;
      _foodie_color = _$v.foodie_color;
      _profile_url = _$v.profile_url;
      _profile_deeplink = _$v.profile_deeplink;
      _profile_image = _$v.profile_image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewUser other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReviewUser;
  }

  @override
  void update(void Function(ReviewUserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReviewUser build() {
    final _$result = _$v ??
        new _$ReviewUser._(
            name: name,
            zomato_handle: zomato_handle,
            foodie_level: foodie_level,
            foodie_level_num: foodie_level_num,
            foodie_color: foodie_color,
            profile_url: profile_url,
            profile_deeplink: profile_deeplink,
            profile_image: profile_image);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
