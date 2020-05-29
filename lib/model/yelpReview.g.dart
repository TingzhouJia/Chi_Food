// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yelpReview.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<YelpReview> _$yelpReviewSerializer = new _$YelpReviewSerializer();

class _$YelpReviewSerializer implements StructuredSerializer<YelpReview> {
  @override
  final Iterable<Type> types = const [YelpReview, _$YelpReview];
  @override
  final String wireName = 'YelpReview';

  @override
  Iterable<Object> serialize(Serializers serializers, YelpReview object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'user',
      serializers.serialize(object.user,
          specifiedType: const FullType(YelpUser)),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
      'time_created',
      serializers.serialize(object.time_created,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  YelpReview deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new YelpReviewBuilder();

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
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(YelpUser)) as YelpUser);
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'time_created':
          result.time_created = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$YelpReview extends YelpReview {
  @override
  final String id;
  @override
  final YelpUser user;
  @override
  final String text;
  @override
  final String time_created;

  factory _$YelpReview([void Function(YelpReviewBuilder) updates]) =>
      (new YelpReviewBuilder()..update(updates)).build();

  _$YelpReview._({this.id, this.user, this.text, this.time_created})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('YelpReview', 'id');
    }
    if (user == null) {
      throw new BuiltValueNullFieldError('YelpReview', 'user');
    }
    if (text == null) {
      throw new BuiltValueNullFieldError('YelpReview', 'text');
    }
    if (time_created == null) {
      throw new BuiltValueNullFieldError('YelpReview', 'time_created');
    }
  }

  @override
  YelpReview rebuild(void Function(YelpReviewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  YelpReviewBuilder toBuilder() => new YelpReviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is YelpReview &&
        id == other.id &&
        user == other.user &&
        text == other.text &&
        time_created == other.time_created;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, id.hashCode), user.hashCode), text.hashCode),
        time_created.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('YelpReview')
          ..add('id', id)
          ..add('user', user)
          ..add('text', text)
          ..add('time_created', time_created))
        .toString();
  }
}

class YelpReviewBuilder implements Builder<YelpReview, YelpReviewBuilder> {
  _$YelpReview _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  YelpUserBuilder _user;
  YelpUserBuilder get user => _$this._user ??= new YelpUserBuilder();
  set user(YelpUserBuilder user) => _$this._user = user;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  String _time_created;
  String get time_created => _$this._time_created;
  set time_created(String time_created) => _$this._time_created = time_created;

  YelpReviewBuilder();

  YelpReviewBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _user = _$v.user?.toBuilder();
      _text = _$v.text;
      _time_created = _$v.time_created;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(YelpReview other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$YelpReview;
  }

  @override
  void update(void Function(YelpReviewBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$YelpReview build() {
    _$YelpReview _$result;
    try {
      _$result = _$v ??
          new _$YelpReview._(
              id: id,
              user: user.build(),
              text: text,
              time_created: time_created);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'YelpReview', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
