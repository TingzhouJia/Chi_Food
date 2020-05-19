// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchResult.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$searchResult extends searchResult {
  @override
  final int results_found;
  @override
  final int results_start;
  @override
  final int results_shown;
  @override
  final BuiltList<Restaurants> restaurants;

  factory _$searchResult([void Function(searchResultBuilder) updates]) =>
      (new searchResultBuilder()..update(updates)).build();

  _$searchResult._(
      {this.results_found,
      this.results_start,
      this.results_shown,
      this.restaurants})
      : super._() {
    if (results_found == null) {
      throw new BuiltValueNullFieldError('searchResult', 'results_found');
    }
    if (results_start == null) {
      throw new BuiltValueNullFieldError('searchResult', 'results_start');
    }
    if (results_shown == null) {
      throw new BuiltValueNullFieldError('searchResult', 'results_shown');
    }
    if (restaurants == null) {
      throw new BuiltValueNullFieldError('searchResult', 'restaurants');
    }
  }

  @override
  searchResult rebuild(void Function(searchResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  searchResultBuilder toBuilder() => new searchResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is searchResult &&
        results_found == other.results_found &&
        results_start == other.results_start &&
        results_shown == other.results_shown &&
        restaurants == other.restaurants;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, results_found.hashCode), results_start.hashCode),
            results_shown.hashCode),
        restaurants.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('searchResult')
          ..add('results_found', results_found)
          ..add('results_start', results_start)
          ..add('results_shown', results_shown)
          ..add('restaurants', restaurants))
        .toString();
  }
}

class searchResultBuilder
    implements Builder<searchResult, searchResultBuilder> {
  _$searchResult _$v;

  int _results_found;
  int get results_found => _$this._results_found;
  set results_found(int results_found) => _$this._results_found = results_found;

  int _results_start;
  int get results_start => _$this._results_start;
  set results_start(int results_start) => _$this._results_start = results_start;

  int _results_shown;
  int get results_shown => _$this._results_shown;
  set results_shown(int results_shown) => _$this._results_shown = results_shown;

  ListBuilder<Restaurants> _restaurants;
  ListBuilder<Restaurants> get restaurants =>
      _$this._restaurants ??= new ListBuilder<Restaurants>();
  set restaurants(ListBuilder<Restaurants> restaurants) =>
      _$this._restaurants = restaurants;

  searchResultBuilder();

  searchResultBuilder get _$this {
    if (_$v != null) {
      _results_found = _$v.results_found;
      _results_start = _$v.results_start;
      _results_shown = _$v.results_shown;
      _restaurants = _$v.restaurants?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(searchResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$searchResult;
  }

  @override
  void update(void Function(searchResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$searchResult build() {
    _$searchResult _$result;
    try {
      _$result = _$v ??
          new _$searchResult._(
              results_found: results_found,
              results_start: results_start,
              results_shown: results_shown,
              restaurants: restaurants.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'restaurants';
        restaurants.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'searchResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
