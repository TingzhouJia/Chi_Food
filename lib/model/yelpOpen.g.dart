// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yelpOpen.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<YelpOpen> _$yelpOpenSerializer = new _$YelpOpenSerializer();

class _$YelpOpenSerializer implements StructuredSerializer<YelpOpen> {
  @override
  final Iterable<Type> types = const [YelpOpen, _$YelpOpen];
  @override
  final String wireName = 'YelpOpen';

  @override
  Iterable<Object> serialize(Serializers serializers, YelpOpen object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'is_overnight',
      serializers.serialize(object.is_overnight,
          specifiedType: const FullType(bool)),
      'start',
      serializers.serialize(object.start,
          specifiedType: const FullType(String)),
      'end',
      serializers.serialize(object.end, specifiedType: const FullType(String)),
      'day',
      serializers.serialize(object.day, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  YelpOpen deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new YelpOpenBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'is_overnight':
          result.is_overnight = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'start':
          result.start = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'end':
          result.end = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$YelpOpen extends YelpOpen {
  @override
  final bool is_overnight;
  @override
  final String start;
  @override
  final String end;
  @override
  final String day;

  factory _$YelpOpen([void Function(YelpOpenBuilder) updates]) =>
      (new YelpOpenBuilder()..update(updates)).build();

  _$YelpOpen._({this.is_overnight, this.start, this.end, this.day})
      : super._() {
    if (is_overnight == null) {
      throw new BuiltValueNullFieldError('YelpOpen', 'is_overnight');
    }
    if (start == null) {
      throw new BuiltValueNullFieldError('YelpOpen', 'start');
    }
    if (end == null) {
      throw new BuiltValueNullFieldError('YelpOpen', 'end');
    }
    if (day == null) {
      throw new BuiltValueNullFieldError('YelpOpen', 'day');
    }
  }

  @override
  YelpOpen rebuild(void Function(YelpOpenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  YelpOpenBuilder toBuilder() => new YelpOpenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is YelpOpen &&
        is_overnight == other.is_overnight &&
        start == other.start &&
        end == other.end &&
        day == other.day;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, is_overnight.hashCode), start.hashCode), end.hashCode),
        day.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('YelpOpen')
          ..add('is_overnight', is_overnight)
          ..add('start', start)
          ..add('end', end)
          ..add('day', day))
        .toString();
  }
}

class YelpOpenBuilder implements Builder<YelpOpen, YelpOpenBuilder> {
  _$YelpOpen _$v;

  bool _is_overnight;
  bool get is_overnight => _$this._is_overnight;
  set is_overnight(bool is_overnight) => _$this._is_overnight = is_overnight;

  String _start;
  String get start => _$this._start;
  set start(String start) => _$this._start = start;

  String _end;
  String get end => _$this._end;
  set end(String end) => _$this._end = end;

  String _day;
  String get day => _$this._day;
  set day(String day) => _$this._day = day;

  YelpOpenBuilder();

  YelpOpenBuilder get _$this {
    if (_$v != null) {
      _is_overnight = _$v.is_overnight;
      _start = _$v.start;
      _end = _$v.end;
      _day = _$v.day;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(YelpOpen other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$YelpOpen;
  }

  @override
  void update(void Function(YelpOpenBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$YelpOpen build() {
    final _$result = _$v ??
        new _$YelpOpen._(
            is_overnight: is_overnight, start: start, end: end, day: day);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
