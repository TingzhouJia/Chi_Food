// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popularity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Popularity extends Popularity {
  @override
  final double popularity;
  @override
  final double nightlife_index;
  @override
  final List<String> top_cuisines;

  factory _$Popularity([void Function(PopularityBuilder) updates]) =>
      (new PopularityBuilder()..update(updates)).build();

  _$Popularity._({this.popularity, this.nightlife_index, this.top_cuisines})
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
        top_cuisines == other.top_cuisines;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, popularity.hashCode), nightlife_index.hashCode),
        top_cuisines.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Popularity')
          ..add('popularity', popularity)
          ..add('nightlife_index', nightlife_index)
          ..add('top_cuisines', top_cuisines))
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

  PopularityBuilder();

  PopularityBuilder get _$this {
    if (_$v != null) {
      _popularity = _$v.popularity;
      _nightlife_index = _$v.nightlife_index;
      _top_cuisines = _$v.top_cuisines;
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
            top_cuisines: top_cuisines);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
