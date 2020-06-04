
import 'package:equatable/equatable.dart';

abstract class RestaurantListEvent extends Equatable{

  RestaurantListEvent();
}

class BaseRestaurantListEvent extends RestaurantListEvent{
  String lat;
  String long;

  BaseRestaurantListEvent({this.lat, this.long});

  @override
  // TODO: implement props
  List<Object> get props => null;

}

class FilterRestaurantListEvent extends RestaurantListEvent{
  String entity_id;
  String entity_type;
  String lat;
  String lon;
  String cuisines;
  String radius;
  String category;

  FilterRestaurantListEvent({this.entity_id, this.entity_type, this.lat,
      this.lon, this.cuisines, this.radius, this.category});

  @override
  // TODO: implement props
  List<Object> get props => null;

}