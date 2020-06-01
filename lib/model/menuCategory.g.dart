// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menuCategory.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MenuCategory> _$menuCategorySerializer =
    new _$MenuCategorySerializer();

class _$MenuCategorySerializer implements StructuredSerializer<MenuCategory> {
  @override
  final Iterable<Type> types = const [MenuCategory, _$MenuCategory];
  @override
  final String wireName = 'MenuCategory';

  @override
  Iterable<Object> serialize(Serializers serializers, MenuCategory object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'strCategory',
      serializers.serialize(object.strCategory,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  MenuCategory deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MenuCategoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'strCategory':
          result.strCategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MenuCategory extends MenuCategory {
  @override
  final String strCategory;

  factory _$MenuCategory([void Function(MenuCategoryBuilder) updates]) =>
      (new MenuCategoryBuilder()..update(updates)).build();

  _$MenuCategory._({this.strCategory}) : super._() {
    if (strCategory == null) {
      throw new BuiltValueNullFieldError('MenuCategory', 'strCategory');
    }
  }

  @override
  MenuCategory rebuild(void Function(MenuCategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MenuCategoryBuilder toBuilder() => new MenuCategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MenuCategory && strCategory == other.strCategory;
  }

  @override
  int get hashCode {
    return $jf($jc(0, strCategory.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MenuCategory')
          ..add('strCategory', strCategory))
        .toString();
  }
}

class MenuCategoryBuilder
    implements Builder<MenuCategory, MenuCategoryBuilder> {
  _$MenuCategory _$v;

  String _strCategory;
  String get strCategory => _$this._strCategory;
  set strCategory(String strCategory) => _$this._strCategory = strCategory;

  MenuCategoryBuilder();

  MenuCategoryBuilder get _$this {
    if (_$v != null) {
      _strCategory = _$v.strCategory;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MenuCategory other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MenuCategory;
  }

  @override
  void update(void Function(MenuCategoryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MenuCategory build() {
    final _$result = _$v ?? new _$MenuCategory._(strCategory: strCategory);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
