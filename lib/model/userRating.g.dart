// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userRating.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserRating> _$userRatingSerializer = new _$UserRatingSerializer();

class _$UserRatingSerializer implements StructuredSerializer<UserRating> {
  @override
  final Iterable<Type> types = const [UserRating, _$UserRating];
  @override
  final String wireName = 'UserRating';

  @override
  Iterable<Object> serialize(Serializers serializers, UserRating object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'aggregate_rating',
      serializers.serialize(object.aggregate_rating,
          specifiedType: const FullType(String)),
      'rating_text',
      serializers.serialize(object.rating_text,
          specifiedType: const FullType(String)),
      'rating_color',
      serializers.serialize(object.rating_color,
          specifiedType: const FullType(String)),
      'votes',
      serializers.serialize(object.votes, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  UserRating deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserRatingBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'aggregate_rating':
          result.aggregate_rating = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rating_text':
          result.rating_text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rating_color':
          result.rating_color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'votes':
          result.votes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$UserRating extends UserRating {
  @override
  final String aggregate_rating;
  @override
  final String rating_text;
  @override
  final String rating_color;
  @override
  final int votes;

  factory _$UserRating([void Function(UserRatingBuilder) updates]) =>
      (new UserRatingBuilder()..update(updates)).build();

  _$UserRating._(
      {this.aggregate_rating, this.rating_text, this.rating_color, this.votes})
      : super._() {
    if (aggregate_rating == null) {
      throw new BuiltValueNullFieldError('UserRating', 'aggregate_rating');
    }
    if (rating_text == null) {
      throw new BuiltValueNullFieldError('UserRating', 'rating_text');
    }
    if (rating_color == null) {
      throw new BuiltValueNullFieldError('UserRating', 'rating_color');
    }
    if (votes == null) {
      throw new BuiltValueNullFieldError('UserRating', 'votes');
    }
  }

  @override
  UserRating rebuild(void Function(UserRatingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserRatingBuilder toBuilder() => new UserRatingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserRating &&
        aggregate_rating == other.aggregate_rating &&
        rating_text == other.rating_text &&
        rating_color == other.rating_color &&
        votes == other.votes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, aggregate_rating.hashCode), rating_text.hashCode),
            rating_color.hashCode),
        votes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserRating')
          ..add('aggregate_rating', aggregate_rating)
          ..add('rating_text', rating_text)
          ..add('rating_color', rating_color)
          ..add('votes', votes))
        .toString();
  }
}

class UserRatingBuilder implements Builder<UserRating, UserRatingBuilder> {
  _$UserRating _$v;

  String _aggregate_rating;
  String get aggregate_rating => _$this._aggregate_rating;
  set aggregate_rating(String aggregate_rating) =>
      _$this._aggregate_rating = aggregate_rating;

  String _rating_text;
  String get rating_text => _$this._rating_text;
  set rating_text(String rating_text) => _$this._rating_text = rating_text;

  String _rating_color;
  String get rating_color => _$this._rating_color;
  set rating_color(String rating_color) => _$this._rating_color = rating_color;

  int _votes;
  int get votes => _$this._votes;
  set votes(int votes) => _$this._votes = votes;

  UserRatingBuilder();

  UserRatingBuilder get _$this {
    if (_$v != null) {
      _aggregate_rating = _$v.aggregate_rating;
      _rating_text = _$v.rating_text;
      _rating_color = _$v.rating_color;
      _votes = _$v.votes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserRating other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserRating;
  }

  @override
  void update(void Function(UserRatingBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserRating build() {
    final _$result = _$v ??
        new _$UserRating._(
            aggregate_rating: aggregate_rating,
            rating_text: rating_text,
            rating_color: rating_color,
            votes: votes);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
