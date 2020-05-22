// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Category> _$categorySerializer = new _$CategorySerializer();

class _$CategorySerializer implements StructuredSerializer<Category> {
  @override
  final Iterable<Type> types = const [Category, _$Category];
  @override
  final String wireName = 'Category';

  @override
  Iterable<Object> serialize(Serializers serializers, Category object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'category_id',
      serializers.serialize(object.category_id,
          specifiedType: const FullType(String)),
      'category_name',
      serializers.serialize(object.category_name,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Category deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'category_id':
          result.category_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category_name':
          result.category_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Category extends Category {
  @override
  final String category_id;
  @override
  final String category_name;

  factory _$Category([void Function(CategoryBuilder) updates]) =>
      (new CategoryBuilder()..update(updates)).build();

  _$Category._({this.category_id, this.category_name}) : super._() {
    if (category_id == null) {
      throw new BuiltValueNullFieldError('Category', 'category_id');
    }
    if (category_name == null) {
      throw new BuiltValueNullFieldError('Category', 'category_name');
    }
  }

  @override
  Category rebuild(void Function(CategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryBuilder toBuilder() => new CategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Category &&
        category_id == other.category_id &&
        category_name == other.category_name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, category_id.hashCode), category_name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Category')
          ..add('category_id', category_id)
          ..add('category_name', category_name))
        .toString();
  }
}

class CategoryBuilder implements Builder<Category, CategoryBuilder> {
  _$Category _$v;

  String _category_id;
  String get category_id => _$this._category_id;
  set category_id(String category_id) => _$this._category_id = category_id;

  String _category_name;
  String get category_name => _$this._category_name;
  set category_name(String category_name) =>
      _$this._category_name = category_name;

  CategoryBuilder();

  CategoryBuilder get _$this {
    if (_$v != null) {
      _category_id = _$v.category_id;
      _category_name = _$v.category_name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Category other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Category;
  }

  @override
  void update(void Function(CategoryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Category build() {
    final _$result = _$v ??
        new _$Category._(
            category_id: category_id, category_name: category_name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
