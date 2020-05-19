

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:chifood/model/restaurants.dart';

part 'searchResult.g.dart';

abstract class searchResult implements Built<searchResult,searchResultBuilder>{
  int get results_found;
  int get results_start;
  int get results_shown;
  BuiltList<Restaurants> get restaurants;

  searchResult._();
  factory searchResult([void Function(searchResultBuilder) updates]) =_$searchResult;

}