// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popularity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Popularity> _$popularitySerializer = new _$PopularitySerializer();

class _$PopularitySerializer implements StructuredSerializer<Popularity> {
  @override
  final Iterable<Type> types = const [Popularity, _$Popularity];
  @override
  final String wireName = 'Popularity';

  @override
  Iterable<Object> serialize(Serializers serializers, Popularity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'popularity',
      serializers.serialize(object.popularity,
          specifiedType: const FullType(double)),
      'nightlife_index',
      serializers.serialize(object.nightlife_index,
          specifiedType: const FullType(double)),
      'top_cuisines',
      serializers.serialize(object.top_cuisines,
          specifiedType: const FullType(List, const [const FullType(String)])),
    ];
    if (object.nearby_res != null) {
      result
        ..add('nearby_res')
        ..add(serializers.serialize(object.nearby_res,
            specifiedType:
                const FullType(List, const [const FullType(String)])));
    }
    return result;
  }

  @override
  Popularity deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PopularityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'nightlife_index':
          result.nightlife_index = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'top_cuisines':
          result.top_cuisines = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(String)]))
              as List<String>;
          break;
        case 'nearby_res':
          result.nearby_res = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(String)]))
              as List<String>;
          break;
      }
    }

    return result.build();
  }
}

class _$Popularity extends Popularity {
  @override
  final double popularity;
  @override
  final double nightlife_index;
  @override
  final List<String> top_cuisines;
  @override
  final List<String> nearby_res;

  factory _$Popularity([void Function(PopularityBuilder) updates]) =>
      (new PopularityBuilder()..update(updates)).build();

  _$Popularity._(
      {this.popularity,
      this.nightlife_index,
      this.top_cuisines,
      this.nearby_res})
      : super._() {
    if (popularity == null) {
      throw new BuiltValueNullFieldError('Popularity', 'popularity');
    }
    if (nightlife_index == null) {
      throw new BuiltValueNullFieldError('Popularity', 'nightlife_index');
    }
    if (top_cuisines == null) {
      throw new BuiltValueNullFieldError('Popularity', 'top_cuisines');
    }
  }

  @override
  Popularity rebuild(void Function(PopularityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PopularityBuilder toBuilder() => new PopularityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Popularity &&
        popularity == other.popularity &&
        nightlife_index == other.nightlife_index &&
        top_cuisines == other.top_cuisines &&
        nearby_res == other.nearby_res;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, popularity.hashCode), nightlife_index.hashCode),
            top_cuisines.hashCode),
        nearby_res.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Popularity')
          ..add('popularity', popularity)
          ..add('nightlife_index', nightlife_index)
          ..add('top_cuisines', top_cuisines)
          ..add('nearby_res', nearby_res))
        .toString();
  }
}

class PopularityBuilder implements Builder<Popularity, PopularityBuilder> {
  _$Popularity _$v;

  double _popularity;
  double get popularity => _$this._popularity;
  set popularity(double popularity) => _$this._popularity = popularity;

  double _nightlife_index;
  double get nightlife_index => _$this._nightlife_index;
  set nightlife_index(double nightlife_index) =>
      _$this._nightlife_index = nightlife_index;

  List<String> _top_cuisines;
  List<String> get top_cuisines => _$this._top_cuisines;
  set top_cuisines(List<String> top_cuisines) =>
      _$this._top_cuisines = top_cuisines;

  List<String> _nearby_res;
  List<String> get nearby_res => _$this._nearby_res;
  set nearby_res(List<String> nearby_res) => _$this._nearby_res = nearby_res;

  PopularityBuilder();

  PopularityBuilder get _$this {
    if (_$v != null) {
      _popularity = _$v.popularity;
      _nightlife_index = _$v.nightlife_index;
      _top_cuisines = _$v.top_cuisines;
      _nearby_res = _$v.nearby_res;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Popularity other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Popularity;
  }

  @override
  void update(void Function(PopularityBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Popularity build() {
    final _$result = _$v ??
        new _$Popularity._(
            popularity: popularity,
            nightlife_index: nightlife_index,
            top_cuisines: top_cuisines,
            nearby_res: nearby_res);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
