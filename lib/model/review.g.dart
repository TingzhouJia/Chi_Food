// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Review> _$reviewSerializer = new _$ReviewSerializer();

class _$ReviewSerializer implements StructuredSerializer<Review> {
  @override
  final Iterable<Type> types = const [Review, _$Review];
  @override
  final String wireName = 'Review';

  @override
  Iterable<Object> serialize(Serializers serializers, Review object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'rating',
      serializers.serialize(object.rating,
          specifiedType: const FullType(String)),
      'review_text',
      serializers.serialize(object.review_text,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'rating_color',
      serializers.serialize(object.rating_color,
          specifiedType: const FullType(String)),
      'review_time_friendly',
      serializers.serialize(object.review_time_friendly,
          specifiedType: const FullType(String)),
      'rating_text',
      serializers.serialize(object.rating_text,
          specifiedType: const FullType(String)),
      'timestamp',
      serializers.serialize(object.timestamp,
          specifiedType: const FullType(String)),
      'likes',
      serializers.serialize(object.likes, specifiedType: const FullType(num)),
      'users',
      serializers.serialize(object.users,
          specifiedType: const FullType(ReviewUser)),
      'comments_count',
      serializers.serialize(object.comments_count,
          specifiedType: const FullType(num)),
    ];

    return result;
  }

  @override
  Review deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReviewBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'review_text':
          result.review_text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rating_color':
          result.rating_color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'review_time_friendly':
          result.review_time_friendly = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rating_text':
          result.rating_text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'likes':
          result.likes = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'users':
          result.users.replace(serializers.deserialize(value,
              specifiedType: const FullType(ReviewUser)) as ReviewUser);
          break;
        case 'comments_count':
          result.comments_count = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
      }
    }

    return result.build();
  }
}

class _$Review extends Review {
  @override
  final String rating;
  @override
  final String review_text;
  @override
  final String id;
  @override
  final String rating_color;
  @override
  final String review_time_friendly;
  @override
  final String rating_text;
  @override
  final String timestamp;
  @override
  final num likes;
  @override
  final ReviewUser users;
  @override
  final num comments_count;

  factory _$Review([void Function(ReviewBuilder) updates]) =>
      (new ReviewBuilder()..update(updates)).build();

  _$Review._(
      {this.rating,
      this.review_text,
      this.id,
      this.rating_color,
      this.review_time_friendly,
      this.rating_text,
      this.timestamp,
      this.likes,
      this.users,
      this.comments_count})
      : super._() {
    if (rating == null) {
      throw new BuiltValueNullFieldError('Review', 'rating');
    }
    if (review_text == null) {
      throw new BuiltValueNullFieldError('Review', 'review_text');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('Review', 'id');
    }
    if (rating_color == null) {
      throw new BuiltValueNullFieldError('Review', 'rating_color');
    }
    if (review_time_friendly == null) {
      throw new BuiltValueNullFieldError('Review', 'review_time_friendly');
    }
    if (rating_text == null) {
      throw new BuiltValueNullFieldError('Review', 'rating_text');
    }
    if (timestamp == null) {
      throw new BuiltValueNullFieldError('Review', 'timestamp');
    }
    if (likes == null) {
      throw new BuiltValueNullFieldError('Review', 'likes');
    }
    if (users == null) {
      throw new BuiltValueNullFieldError('Review', 'users');
    }
    if (comments_count == null) {
      throw new BuiltValueNullFieldError('Review', 'comments_count');
    }
  }

  @override
  Review rebuild(void Function(ReviewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewBuilder toBuilder() => new ReviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Review &&
        rating == other.rating &&
        review_text == other.review_text &&
        id == other.id &&
        rating_color == other.rating_color &&
        review_time_friendly == other.review_time_friendly &&
        rating_text == other.rating_text &&
        timestamp == other.timestamp &&
        likes == other.likes &&
        users == other.users &&
        comments_count == other.comments_count;
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
                                    $jc($jc(0, rating.hashCode),
                                        review_text.hashCode),
                                    id.hashCode),
                                rating_color.hashCode),
                            review_time_friendly.hashCode),
                        rating_text.hashCode),
                    timestamp.hashCode),
                likes.hashCode),
            users.hashCode),
        comments_count.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Review')
          ..add('rating', rating)
          ..add('review_text', review_text)
          ..add('id', id)
          ..add('rating_color', rating_color)
          ..add('review_time_friendly', review_time_friendly)
          ..add('rating_text', rating_text)
          ..add('timestamp', timestamp)
          ..add('likes', likes)
          ..add('users', users)
          ..add('comments_count', comments_count))
        .toString();
  }
}

class ReviewBuilder implements Builder<Review, ReviewBuilder> {
  _$Review _$v;

  String _rating;
  String get rating => _$this._rating;
  set rating(String rating) => _$this._rating = rating;

  String _review_text;
  String get review_text => _$this._review_text;
  set review_text(String review_text) => _$this._review_text = review_text;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _rating_color;
  String get rating_color => _$this._rating_color;
  set rating_color(String rating_color) => _$this._rating_color = rating_color;

  String _review_time_friendly;
  String get review_time_friendly => _$this._review_time_friendly;
  set review_time_friendly(String review_time_friendly) =>
      _$this._review_time_friendly = review_time_friendly;

  String _rating_text;
  String get rating_text => _$this._rating_text;
  set rating_text(String rating_text) => _$this._rating_text = rating_text;

  String _timestamp;
  String get timestamp => _$this._timestamp;
  set timestamp(String timestamp) => _$this._timestamp = timestamp;

  num _likes;
  num get likes => _$this._likes;
  set likes(num likes) => _$this._likes = likes;

  ReviewUserBuilder _users;
  ReviewUserBuilder get users => _$this._users ??= new ReviewUserBuilder();
  set users(ReviewUserBuilder users) => _$this._users = users;

  num _comments_count;
  num get comments_count => _$this._comments_count;
  set comments_count(num comments_count) =>
      _$this._comments_count = comments_count;

  ReviewBuilder();

  ReviewBuilder get _$this {
    if (_$v != null) {
      _rating = _$v.rating;
      _review_text = _$v.review_text;
      _id = _$v.id;
      _rating_color = _$v.rating_color;
      _review_time_friendly = _$v.review_time_friendly;
      _rating_text = _$v.rating_text;
      _timestamp = _$v.timestamp;
      _likes = _$v.likes;
      _users = _$v.users?.toBuilder();
      _comments_count = _$v.comments_count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Review other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Review;
  }

  @override
  void update(void Function(ReviewBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Review build() {
    _$Review _$result;
    try {
      _$result = _$v ??
          new _$Review._(
              rating: rating,
              review_text: review_text,
              id: id,
              rating_color: rating_color,
              review_time_friendly: review_time_friendly,
              rating_text: rating_text,
              timestamp: timestamp,
              likes: likes,
              users: users.build(),
              comments_count: comments_count);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'users';
        users.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Review', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
