// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menuItem.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MenuItem> _$menuItemSerializer = new _$MenuItemSerializer();

class _$MenuItemSerializer implements StructuredSerializer<MenuItem> {
  @override
  final Iterable<Type> types = const [MenuItem, _$MenuItem];
  @override
  final String wireName = 'MenuItem';

  @override
  Iterable<Object> serialize(Serializers serializers, MenuItem object,
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
    ];

    return result;
  }

  @override
  MenuItem deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MenuItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
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
      }
    }

    return result.build();
  }
}

class _$MenuItem extends MenuItem {
  @override
  final String strMeal;
  @override
  final String strMealThumb;
  @override
  final String idMeal;

  factory _$MenuItem([void Function(MenuItemBuilder) updates]) =>
      (new MenuItemBuilder()..update(updates)).build();

  _$MenuItem._({this.strMeal, this.strMealThumb, this.idMeal}) : super._() {
    if (strMeal == null) {
      throw new BuiltValueNullFieldError('MenuItem', 'strMeal');
    }
    if (strMealThumb == null) {
      throw new BuiltValueNullFieldError('MenuItem', 'strMealThumb');
    }
    if (idMeal == null) {
      throw new BuiltValueNullFieldError('MenuItem', 'idMeal');
    }
  }

  @override
  MenuItem rebuild(void Function(MenuItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MenuItemBuilder toBuilder() => new MenuItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MenuItem &&
        strMeal == other.strMeal &&
        strMealThumb == other.strMealThumb &&
        idMeal == other.idMeal;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, strMeal.hashCode), strMealThumb.hashCode), idMeal.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MenuItem')
          ..add('strMeal', strMeal)
          ..add('strMealThumb', strMealThumb)
          ..add('idMeal', idMeal))
        .toString();
  }
}

class MenuItemBuilder implements Builder<MenuItem, MenuItemBuilder> {
  _$MenuItem _$v;

  String _strMeal;
  String get strMeal => _$this._strMeal;
  set strMeal(String strMeal) => _$this._strMeal = strMeal;

  String _strMealThumb;
  String get strMealThumb => _$this._strMealThumb;
  set strMealThumb(String strMealThumb) => _$this._strMealThumb = strMealThumb;

  String _idMeal;
  String get idMeal => _$this._idMeal;
  set idMeal(String idMeal) => _$this._idMeal = idMeal;

  MenuItemBuilder();

  MenuItemBuilder get _$this {
    if (_$v != null) {
      _strMeal = _$v.strMeal;
      _strMealThumb = _$v.strMealThumb;
      _idMeal = _$v.idMeal;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MenuItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MenuItem;
  }

  @override
  void update(void Function(MenuItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MenuItem build() {
    final _$result = _$v ??
        new _$MenuItem._(
            strMeal: strMeal, strMealThumb: strMealThumb, idMeal: idMeal);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
