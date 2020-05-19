

import 'package:built_value/built_value.dart';
import 'package:chifood/model/location.dart';
part 'restaurants.g.dart';
abstract class Restaurants implements Built<Restaurants,RestaurantsBuilder>{
  int get id;
  String get name;
  String get url;
  Location get location;
  int get average_cost_for_two;


}