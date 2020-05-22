

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:chifood/model/restaurants.dart';

part 'searchResult.g.dart';

abstract class SearchResult implements Built<SearchResult,SearchResultBuilder>{
  static Serializer<SearchResult> get serializer => _$searchResultSerializer;
  int get results_found;
  int get results_start;
  int get results_shown;
  BuiltList<Restaurants> get restaurants;

  SearchResult._();
  factory SearchResult([void Function(SearchResultBuilder) updates]) =_$SearchResult;

}