// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Photo> _$photoSerializer = new _$PhotoSerializer();

class _$PhotoSerializer implements StructuredSerializer<Photo> {
  @override
  final Iterable<Type> types = const [Photo, _$Photo];
  @override
  final String wireName = 'Photo';

  @override
  Iterable<Object> serialize(Serializers serializers, Photo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'thumb_url',
      serializers.serialize(object.thumb_url,
          specifiedType: const FullType(String)),
      'user',
      serializers.serialize(object.user,
          specifiedType: const FullType(ReviewUser)),
      'res_id',
      serializers.serialize(object.res_id,
          specifiedType: const FullType(String)),
      'caption',
      serializers.serialize(object.caption,
          specifiedType: const FullType(String)),
      'timestamp',
      serializers.serialize(object.timestamp,
          specifiedType: const FullType(String)),
      'friendly_time',
      serializers.serialize(object.friendly_time,
          specifiedType: const FullType(String)),
      'width',
      serializers.serialize(object.width, specifiedType: const FullType(int)),
      'height',
      serializers.serialize(object.height, specifiedType: const FullType(int)),
      'comments_count',
      serializers.serialize(object.comments_count,
          specifiedType: const FullType(int)),
      'likes_count',
      serializers.serialize(object.likes_count,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Photo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PhotoBuilder();

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
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'thumb_url':
          result.thumb_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(ReviewUser)) as ReviewUser);
          break;
        case 'res_id':
          result.res_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'caption':
          result.caption = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'friendly_time':
          result.friendly_time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'comments_count':
          result.comments_count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'likes_count':
          result.likes_count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Photo extends Photo {
  @override
  final String id;
  @override
  final String url;
  @override
  final String thumb_url;
  @override
  final ReviewUser user;
  @override
  final String res_id;
  @override
  final String caption;
  @override
  final String timestamp;
  @override
  final String friendly_time;
  @override
  final int width;
  @override
  final int height;
  @override
  final int comments_count;
  @override
  final int likes_count;

  factory _$Photo([void Function(PhotoBuilder) updates]) =>
      (new PhotoBuilder()..update(updates)).build();

  _$Photo._(
      {this.id,
      this.url,
      this.thumb_url,
      this.user,
      this.res_id,
      this.caption,
      this.timestamp,
      this.friendly_time,
      this.width,
      this.height,
      this.comments_count,
      this.likes_count})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Photo', 'id');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Photo', 'url');
    }
    if (thumb_url == null) {
      throw new BuiltValueNullFieldError('Photo', 'thumb_url');
    }
    if (user == null) {
      throw new BuiltValueNullFieldError('Photo', 'user');
    }
    if (res_id == null) {
      throw new BuiltValueNullFieldError('Photo', 'res_id');
    }
    if (caption == null) {
      throw new BuiltValueNullFieldError('Photo', 'caption');
    }
    if (timestamp == null) {
      throw new BuiltValueNullFieldError('Photo', 'timestamp');
    }
    if (friendly_time == null) {
      throw new BuiltValueNullFieldError('Photo', 'friendly_time');
    }
    if (width == null) {
      throw new BuiltValueNullFieldError('Photo', 'width');
    }
    if (height == null) {
      throw new BuiltValueNullFieldError('Photo', 'height');
    }
    if (comments_count == null) {
      throw new BuiltValueNullFieldError('Photo', 'comments_count');
    }
    if (likes_count == null) {
      throw new BuiltValueNullFieldError('Photo', 'likes_count');
    }
  }

  @override
  Photo rebuild(void Function(PhotoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PhotoBuilder toBuilder() => new PhotoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Photo &&
        id == other.id &&
        url == other.url &&
        thumb_url == other.thumb_url &&
        user == other.user &&
        res_id == other.res_id &&
        caption == other.caption &&
        timestamp == other.timestamp &&
        friendly_time == other.friendly_time &&
        width == other.width &&
        height == other.height &&
        comments_count == other.comments_count &&
        likes_count == other.likes_count;
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
                                        $jc(
                                            $jc($jc(0, id.hashCode),
                                                url.hashCode),
                                            thumb_url.hashCode),
                                        user.hashCode),
                                    res_id.hashCode),
                                caption.hashCode),
                            timestamp.hashCode),
                        friendly_time.hashCode),
                    width.hashCode),
                height.hashCode),
            comments_count.hashCode),
        likes_count.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Photo')
          ..add('id', id)
          ..add('url', url)
          ..add('thumb_url', thumb_url)
          ..add('user', user)
          ..add('res_id', res_id)
          ..add('caption', caption)
          ..add('timestamp', timestamp)
          ..add('friendly_time', friendly_time)
          ..add('width', width)
          ..add('height', height)
          ..add('comments_count', comments_count)
          ..add('likes_count', likes_count))
        .toString();
  }
}

class PhotoBuilder implements Builder<Photo, PhotoBuilder> {
  _$Photo _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _thumb_url;
  String get thumb_url => _$this._thumb_url;
  set thumb_url(String thumb_url) => _$this._thumb_url = thumb_url;

  ReviewUserBuilder _user;
  ReviewUserBuilder get user => _$this._user ??= new ReviewUserBuilder();
  set user(ReviewUserBuilder user) => _$this._user = user;

  String _res_id;
  String get res_id => _$this._res_id;
  set res_id(String res_id) => _$this._res_id = res_id;

  String _caption;
  String get caption => _$this._caption;
  set caption(String caption) => _$this._caption = caption;

  String _timestamp;
  String get timestamp => _$this._timestamp;
  set timestamp(String timestamp) => _$this._timestamp = timestamp;

  String _friendly_time;
  String get friendly_time => _$this._friendly_time;
  set friendly_time(String friendly_time) =>
      _$this._friendly_time = friendly_time;

  int _width;
  int get width => _$this._width;
  set width(int width) => _$this._width = width;

  int _height;
  int get height => _$this._height;
  set height(int height) => _$this._height = height;

  int _comments_count;
  int get comments_count => _$this._comments_count;
  set comments_count(int comments_count) =>
      _$this._comments_count = comments_count;

  int _likes_count;
  int get likes_count => _$this._likes_count;
  set likes_count(int likes_count) => _$this._likes_count = likes_count;

  PhotoBuilder();

  PhotoBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _url = _$v.url;
      _thumb_url = _$v.thumb_url;
      _user = _$v.user?.toBuilder();
      _res_id = _$v.res_id;
      _caption = _$v.caption;
      _timestamp = _$v.timestamp;
      _friendly_time = _$v.friendly_time;
      _width = _$v.width;
      _height = _$v.height;
      _comments_count = _$v.comments_count;
      _likes_count = _$v.likes_count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Photo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Photo;
  }

  @override
  void update(void Function(PhotoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Photo build() {
    _$Photo _$result;
    try {
      _$result = _$v ??
          new _$Photo._(
              id: id,
              url: url,
              thumb_url: thumb_url,
              user: user.build(),
              res_id: res_id,
              caption: caption,
              timestamp: timestamp,
              friendly_time: friendly_time,
              width: width,
              height: height,
              comments_count: comments_count,
              likes_count: likes_count);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Photo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
