// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dailyMenu.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DailyMenu> _$dailyMenuSerializer = new _$DailyMenuSerializer();

class _$DailyMenuSerializer implements StructuredSerializer<DailyMenu> {
  @override
  final Iterable<Type> types = const [DailyMenu, _$DailyMenu];
  @override
  final String wireName = 'DailyMenu';

  @override
  Iterable<Object> serialize(Serializers serializers, DailyMenu object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'daily_menu_id',
      serializers.serialize(object.daily_menu_id,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'start_date',
      serializers.serialize(object.start_date,
          specifiedType: const FullType(DateTime)),
      'end_date',
      serializers.serialize(object.end_date,
          specifiedType: const FullType(DateTime)),
      'dishes',
      serializers.serialize(object.dishes,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Dish)])),
    ];

    return result;
  }

  @override
  DailyMenu deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DailyMenuBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'daily_menu_id':
          result.daily_menu_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'start_date':
          result.start_date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'end_date':
          result.end_date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'dishes':
          result.dishes.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Dish)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$DailyMenu extends DailyMenu {
  @override
  final String daily_menu_id;
  @override
  final String name;
  @override
  final DateTime start_date;
  @override
  final DateTime end_date;
  @override
  final BuiltList<Dish> dishes;

  factory _$DailyMenu([void Function(DailyMenuBuilder) updates]) =>
      (new DailyMenuBuilder()..update(updates)).build();

  _$DailyMenu._(
      {this.daily_menu_id,
      this.name,
      this.start_date,
      this.end_date,
      this.dishes})
      : super._() {
    if (daily_menu_id == null) {
      throw new BuiltValueNullFieldError('DailyMenu', 'daily_menu_id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('DailyMenu', 'name');
    }
    if (start_date == null) {
      throw new BuiltValueNullFieldError('DailyMenu', 'start_date');
    }
    if (end_date == null) {
      throw new BuiltValueNullFieldError('DailyMenu', 'end_date');
    }
    if (dishes == null) {
      throw new BuiltValueNullFieldError('DailyMenu', 'dishes');
    }
  }

  @override
  DailyMenu rebuild(void Function(DailyMenuBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyMenuBuilder toBuilder() => new DailyMenuBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyMenu &&
        daily_menu_id == other.daily_menu_id &&
        name == other.name &&
        start_date == other.start_date &&
        end_date == other.end_date &&
        dishes == other.dishes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, daily_menu_id.hashCode), name.hashCode),
                start_date.hashCode),
            end_date.hashCode),
        dishes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DailyMenu')
          ..add('daily_menu_id', daily_menu_id)
          ..add('name', name)
          ..add('start_date', start_date)
          ..add('end_date', end_date)
          ..add('dishes', dishes))
        .toString();
  }
}

class DailyMenuBuilder implements Builder<DailyMenu, DailyMenuBuilder> {
  _$DailyMenu _$v;

  String _daily_menu_id;
  String get daily_menu_id => _$this._daily_menu_id;
  set daily_menu_id(String daily_menu_id) =>
      _$this._daily_menu_id = daily_menu_id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  DateTime _start_date;
  DateTime get start_date => _$this._start_date;
  set start_date(DateTime start_date) => _$this._start_date = start_date;

  DateTime _end_date;
  DateTime get end_date => _$this._end_date;
  set end_date(DateTime end_date) => _$this._end_date = end_date;

  ListBuilder<Dish> _dishes;
  ListBuilder<Dish> get dishes => _$this._dishes ??= new ListBuilder<Dish>();
  set dishes(ListBuilder<Dish> dishes) => _$this._dishes = dishes;

  DailyMenuBuilder();

  DailyMenuBuilder get _$this {
    if (_$v != null) {
      _daily_menu_id = _$v.daily_menu_id;
      _name = _$v.name;
      _start_date = _$v.start_date;
      _end_date = _$v.end_date;
      _dishes = _$v.dishes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyMenu other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DailyMenu;
  }

  @override
  void update(void Function(DailyMenuBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DailyMenu build() {
    _$DailyMenu _$result;
    try {
      _$result = _$v ??
          new _$DailyMenu._(
              daily_menu_id: daily_menu_id,
              name: name,
              start_date: start_date,
              end_date: end_date,
              dishes: dishes.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'dishes';
        dishes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DailyMenu', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
