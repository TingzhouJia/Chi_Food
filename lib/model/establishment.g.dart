// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'establishment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Establishment> _$establishmentSerializer =
    new _$EstablishmentSerializer();

class _$EstablishmentSerializer implements StructuredSerializer<Establishment> {
  @override
  final Iterable<Type> types = const [Establishment, _$Establishment];
  @override
  final String wireName = 'Establishment';

  @override
  Iterable<Object> serialize(Serializers serializers, Establishment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Establishment deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EstablishmentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Establishment extends Establishment {
  @override
  final int id;
  @override
  final String name;

  factory _$Establishment([void Function(EstablishmentBuilder) updates]) =>
      (new EstablishmentBuilder()..update(updates)).build();

  _$Establishment._({this.id, this.name}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Establishment', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Establishment', 'name');
    }
  }

  @override
  Establishment rebuild(void Function(EstablishmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EstablishmentBuilder toBuilder() => new EstablishmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Establishment && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Establishment')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class EstablishmentBuilder
    implements Builder<Establishment, EstablishmentBuilder> {
  _$Establishment _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  EstablishmentBuilder();

  EstablishmentBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Establishment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Establishment;
  }

  @override
  void update(void Function(EstablishmentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Establishment build() {
    final _$result = _$v ?? new _$Establishment._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
