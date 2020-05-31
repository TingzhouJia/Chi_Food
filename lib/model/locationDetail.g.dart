// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locationDetail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocationDetail> _$locationDetailSerializer =
    new _$LocationDetailSerializer();

class _$LocationDetailSerializer
    implements StructuredSerializer<LocationDetail> {
  @override
  final Iterable<Type> types = const [LocationDetail, _$LocationDetail];
  @override
  final String wireName = 'LocationDetail';

  @override
  Iterable<Object> serialize(Serializers serializers, LocationDetail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'best_rated_restaurant',
      serializers.serialize(object.best_rated_restaurant,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Restaurants)])),
    ];

    return result;
  }

  @override
  LocationDetail deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationDetailBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'best_rated_restaurant':
          result.best_rated_restaurant.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Restaurants)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$LocationDetail extends LocationDetail {
  @override
  final BuiltList<Restaurants> best_rated_restaurant;

  factory _$LocationDetail([void Function(LocationDetailBuilder) updates]) =>
      (new LocationDetailBuilder()..update(updates)).build();

  _$LocationDetail._({this.best_rated_restaurant}) : super._() {
    if (best_rated_restaurant == null) {
      throw new BuiltValueNullFieldError(
          'LocationDetail', 'best_rated_restaurant');
    }
  }

  @override
  LocationDetail rebuild(void Function(LocationDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationDetailBuilder toBuilder() =>
      new LocationDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocationDetail &&
        best_rated_restaurant == other.best_rated_restaurant;
  }

  @override
  int get hashCode {
    return $jf($jc(0, best_rated_restaurant.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LocationDetail')
          ..add('best_rated_restaurant', best_rated_restaurant))
        .toString();
  }
}

class LocationDetailBuilder
    implements Builder<LocationDetail, LocationDetailBuilder> {
  _$LocationDetail _$v;

  ListBuilder<Restaurants> _best_rated_restaurant;
  ListBuilder<Restaurants> get best_rated_restaurant =>
      _$this._best_rated_restaurant ??= new ListBuilder<Restaurants>();
  set best_rated_restaurant(ListBuilder<Restaurants> best_rated_restaurant) =>
      _$this._best_rated_restaurant = best_rated_restaurant;

  LocationDetailBuilder();

  LocationDetailBuilder get _$this {
    if (_$v != null) {
      _best_rated_restaurant = _$v.best_rated_restaurant?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocationDetail other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LocationDetail;
  }

  @override
  void update(void Function(LocationDetailBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LocationDetail build() {
    _$LocationDetail _$result;
    try {
      _$result = _$v ??
          new _$LocationDetail._(
              best_rated_restaurant: best_rated_restaurant.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'best_rated_restaurant';
        best_rated_restaurant.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LocationDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
