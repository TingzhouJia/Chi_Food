// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Dish> _$dishSerializer = new _$DishSerializer();

class _$DishSerializer implements StructuredSerializer<Dish> {
  @override
  final Iterable<Type> types = const [Dish, _$Dish];
  @override
  final String wireName = 'Dish';

  @override
  Iterable<Object> serialize(Serializers serializers, Dish object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'dish_id',
      serializers.serialize(object.dish_id,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Dish deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DishBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'dish_id':
          result.dish_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Dish extends Dish {
  @override
  final String dish_id;
  @override
  final String name;
  @override
  final String price;

  factory _$Dish([void Function(DishBuilder) updates]) =>
      (new DishBuilder()..update(updates)).build();

  _$Dish._({this.dish_id, this.name, this.price}) : super._() {
    if (dish_id == null) {
      throw new BuiltValueNullFieldError('Dish', 'dish_id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Dish', 'name');
    }
    if (price == null) {
      throw new BuiltValueNullFieldError('Dish', 'price');
    }
  }

  @override
  Dish rebuild(void Function(DishBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DishBuilder toBuilder() => new DishBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Dish &&
        dish_id == other.dish_id &&
        name == other.name &&
        price == other.price;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, dish_id.hashCode), name.hashCode), price.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Dish')
          ..add('dish_id', dish_id)
          ..add('name', name)
          ..add('price', price))
        .toString();
  }
}

class DishBuilder implements Builder<Dish, DishBuilder> {
  _$Dish _$v;

  String _dish_id;
  String get dish_id => _$this._dish_id;
  set dish_id(String dish_id) => _$this._dish_id = dish_id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _price;
  String get price => _$this._price;
  set price(String price) => _$this._price = price;

  DishBuilder();

  DishBuilder get _$this {
    if (_$v != null) {
      _dish_id = _$v.dish_id;
      _name = _$v.name;
      _price = _$v.price;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Dish other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Dish;
  }

  @override
  void update(void Function(DishBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Dish build() {
    final _$result =
        _$v ?? new _$Dish._(dish_id: dish_id, name: name, price: price);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
