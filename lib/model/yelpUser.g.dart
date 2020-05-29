// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yelpUser.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<YelpUser> _$yelpUserSerializer = new _$YelpUserSerializer();

class _$YelpUserSerializer implements StructuredSerializer<YelpUser> {
  @override
  final Iterable<Type> types = const [YelpUser, _$YelpUser];
  @override
  final String wireName = 'YelpUser';

  @override
  Iterable<Object> serialize(Serializers serializers, YelpUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'profile_url',
      serializers.serialize(object.profile_url,
          specifiedType: const FullType(String)),
      'image_url',
      serializers.serialize(object.image_url,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  YelpUser deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new YelpUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profile_url':
          result.profile_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_url':
          result.image_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$YelpUser extends YelpUser {
  @override
  final String id;
  @override
  final String profile_url;
  @override
  final String image_url;
  @override
  final String name;

  factory _$YelpUser([void Function(YelpUserBuilder) updates]) =>
      (new YelpUserBuilder()..update(updates)).build();

  _$YelpUser._({this.id, this.profile_url, this.image_url, this.name})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('YelpUser', 'id');
    }
    if (profile_url == null) {
      throw new BuiltValueNullFieldError('YelpUser', 'profile_url');
    }
    if (image_url == null) {
      throw new BuiltValueNullFieldError('YelpUser', 'image_url');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('YelpUser', 'name');
    }
  }

  @override
  YelpUser rebuild(void Function(YelpUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  YelpUserBuilder toBuilder() => new YelpUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is YelpUser &&
        id == other.id &&
        profile_url == other.profile_url &&
        image_url == other.image_url &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), profile_url.hashCode), image_url.hashCode),
        name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('YelpUser')
          ..add('id', id)
          ..add('profile_url', profile_url)
          ..add('image_url', image_url)
          ..add('name', name))
        .toString();
  }
}

class YelpUserBuilder implements Builder<YelpUser, YelpUserBuilder> {
  _$YelpUser _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _profile_url;
  String get profile_url => _$this._profile_url;
  set profile_url(String profile_url) => _$this._profile_url = profile_url;

  String _image_url;
  String get image_url => _$this._image_url;
  set image_url(String image_url) => _$this._image_url = image_url;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  YelpUserBuilder();

  YelpUserBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _profile_url = _$v.profile_url;
      _image_url = _$v.image_url;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(YelpUser other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$YelpUser;
  }

  @override
  void update(void Function(YelpUserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$YelpUser build() {
    final _$result = _$v ??
        new _$YelpUser._(
            id: id, profile_url: profile_url, image_url: image_url, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
