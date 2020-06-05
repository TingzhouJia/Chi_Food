
import 'package:chifood/model/restaurants.dart';

abstract class BaseFilterRestaurant{
  Future<List<Restaurants>> getFilteredRestaurant({String entity_id,
  String entity_type,
  String lat,
  String lon,
  String cuisines,
  String radius,
  String category});
}