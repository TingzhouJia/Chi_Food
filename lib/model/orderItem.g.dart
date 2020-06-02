// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orderItem.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderItem> _$orderItemSerializer = new _$OrderItemSerializer();

class _$OrderItemSerializer implements StructuredSerializer<OrderItem> {
  @override
  final Iterable<Type> types = const [OrderItem, _$OrderItem];
  @override
  final String wireName = 'OrderItem';

  @override
  Iterable<Object> serialize(Serializers serializers, OrderItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'strMeal',
      serializers.serialize(object.strMeal,
          specifiedType: const FullType(String)),
      'strMealThumb',
      serializers.serialize(object.strMealThumb,
          specifiedType: const FullType(String)),
      'idMeal',
      serializers.serialize(object.idMeal,
          specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(double)),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.restaurant != null) {
      result
        ..add('restaurant')
        ..add(serializers.serialize(object.restaurant,
            specifiedType: const FullType(Restaurants)));
    }
    return result;
  }

  @override
  OrderItem deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderItemBuilder();

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
        case 'strMeal':
          result.strMeal = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strMealThumb':
          result.strMealThumb = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'idMeal':
          result.idMeal = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'restaurant':
          result.restaurant.replace(serializers.deserialize(value,
              specifiedType: const FullType(Restaurants)) as Restaurants);
          break;
      }
    }

    return result.build();
  }
}

class _$OrderItem extends OrderItem {
  @override
  final String id;
  @override
  final String strMeal;
  @override
  final String strMealThumb;
  @override
  final String idMeal;
  @override
  final double price;
  @override
  final int count;
  @override
  final Restaurants restaurant;

  factory _$OrderItem([void Function(OrderItemBuilder) updates]) =>
      (new OrderItemBuilder()..update(updates)).build();

  _$OrderItem._(
      {this.id,
      this.strMeal,
      this.strMealThumb,
      this.idMeal,
      this.price,
      this.count,
      this.restaurant})
      : super._() {
    if (strMeal == null) {
      throw new BuiltValueNullFieldError('OrderItem', 'strMeal');
    }
    if (strMealThumb == null) {
      throw new BuiltValueNullFieldError('OrderItem', 'strMealThumb');
    }
    if (idMeal == null) {
      throw new BuiltValueNullFieldError('OrderItem', 'idMeal');
    }
    if (price == null) {
      throw new BuiltValueNullFieldError('OrderItem', 'price');
    }
    if (count == null) {
      throw new BuiltValueNullFieldError('OrderItem', 'count');
    }
  }

  @override
  OrderItem rebuild(void Function(OrderItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderItemBuilder toBuilder() => new OrderItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderItem &&
        id == other.id &&
        strMeal == other.strMeal &&
        strMealThumb == other.strMealThumb &&
        idMeal == other.idMeal &&
        price == other.price &&
        count == other.count &&
        restaurant == other.restaurant;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), strMeal.hashCode),
                        strMealThumb.hashCode),
                    idMeal.hashCode),
                price.hashCode),
            count.hashCode),
        restaurant.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderItem')
          ..add('id', id)
          ..add('strMeal', strMeal)
          ..add('strMealThumb', strMealThumb)
          ..add('idMeal', idMeal)
          ..add('price', price)
          ..add('count', count)
          ..add('restaurant', restaurant))
        .toString();
  }
}

class OrderItemBuilder implements Builder<OrderItem, OrderItemBuilder> {
  _$OrderItem _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _strMeal;
  String get strMeal => _$this._strMeal;
  set strMeal(String strMeal) => _$this._strMeal = strMeal;

  String _strMealThumb;
  String get strMealThumb => _$this._strMealThumb;
  set strMealThumb(String strMealThumb) => _$this._strMealThumb = strMealThumb;

  String _idMeal;
  String get idMeal => _$this._idMeal;
  set idMeal(String idMeal) => _$this._idMeal = idMeal;

  double _price;
  double get price => _$this._price;
  set price(double price) => _$this._price = price;

  int _count;
  int get count => _$this._count;
  set count(int count) => _$this._count = count;

  RestaurantsBuilder _restaurant;
  RestaurantsBuilder get restaurant =>
      _$this._restaurant ??= new RestaurantsBuilder();
  set restaurant(RestaurantsBuilder restaurant) =>
      _$this._restaurant = restaurant;

  OrderItemBuilder();

  OrderItemBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _strMeal = _$v.strMeal;
      _strMealThumb = _$v.strMealThumb;
      _idMeal = _$v.idMeal;
      _price = _$v.price;
      _count = _$v.count;
      _restaurant = _$v.restaurant?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrderItem;
  }

  @override
  void update(void Function(OrderItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderItem build() {
    _$OrderItem _$result;
    try {
      _$result = _$v ??
          new _$OrderItem._(
              id: id,
              strMeal: strMeal,
              strMealThumb: strMealThumb,
              idMeal: idMeal,
              price: price,
              count: count,
              restaurant: _restaurant?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'restaurant';
        _restaurant?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OrderItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
