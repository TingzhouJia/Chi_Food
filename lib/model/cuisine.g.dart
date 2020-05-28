// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cuisine.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Cuisine> _$cuisineSerializer = new _$CuisineSerializer();

class _$CuisineSerializer implements StructuredSerializer<Cuisine> {
  @override
  final Iterable<Type> types = const [Cuisine, _$Cuisine];
  @override
  final String wireName = 'Cuisine';

  @override
  Iterable<Object> serialize(Serializers serializers, Cuisine object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'cuisine_id',
      serializers.serialize(object.cuisine_id,
          specifiedType: const FullType(int)),
      'cuisine_name',
      serializers.serialize(object.cuisine_name,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Cuisine deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CuisineBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'cuisine_id':
          result.cuisine_id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cuisine_name':
          result.cuisine_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Cuisine extends Cuisine {
  @override
  final int cuisine_id;
  @override
  final String cuisine_name;

  factory _$Cuisine([void Function(CuisineBuilder) updates]) =>
      (new CuisineBuilder()..update(updates)).build();

  _$Cuisine._({this.cuisine_id, this.cuisine_name}) : super._() {
    if (cuisine_id == null) {
      throw new BuiltValueNullFieldError('Cuisine', 'cuisine_id');
    }
    if (cuisine_name == null) {
      throw new BuiltValueNullFieldError('Cuisine', 'cuisine_name');
    }
  }

  @override
  Cuisine rebuild(void Function(CuisineBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CuisineBuilder toBuilder() => new CuisineBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Cuisine &&
        cuisine_id == other.cuisine_id &&
        cuisine_name == other.cuisine_name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, cuisine_id.hashCode), cuisine_name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Cuisine')
          ..add('cuisine_id', cuisine_id)
          ..add('cuisine_name', cuisine_name))
        .toString();
  }
}

class CuisineBuilder implements Builder<Cuisine, CuisineBuilder> {
  _$Cuisine _$v;

  int _cuisine_id;
  int get cuisine_id => _$this._cuisine_id;
  set cuisine_id(int cuisine_id) => _$this._cuisine_id = cuisine_id;

  String _cuisine_name;
  String get cuisine_name => _$this._cuisine_name;
  set cuisine_name(String cuisine_name) => _$this._cuisine_name = cuisine_name;

  CuisineBuilder();

  CuisineBuilder get _$this {
    if (_$v != null) {
      _cuisine_id = _$v.cuisine_id;
      _cuisine_name = _$v.cuisine_name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Cuisine other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Cuisine;
  }

  @override
  void update(void Function(CuisineBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Cuisine build() {
    final _$result = _$v ??
        new _$Cuisine._(cuisine_id: cuisine_id, cuisine_name: cuisine_name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
