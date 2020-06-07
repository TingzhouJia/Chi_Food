
import 'package:chifood/model/restaurants.dart';
import 'package:equatable/equatable.dart';

abstract class RestaurantListState extends Equatable{

  RestaurantListState();
}

class LoadingRestaurantListState extends RestaurantListState{

  @override
  // TODO: implement props
  List<Object> get props => null;

  LoadingRestaurantListState();

}

class LoadFailRestaurantListState extends RestaurantListState{

  LoadFailRestaurantListState();

  @override
  // TODO: implement props
  List<Object> get props => null;
}

class LoadedFilterRestaurantListState extends RestaurantListState{
  final List<Restaurants> restaurantList;

  LoadedFilterRestaurantListState(this.restaurantList);

  @override
  // TODO: implement props
  List<Object> get props => [restaurantList];

}

class NoRestaurantListState extends RestaurantListState{
  @override
  // TODO: implement props
  List<Object> get props => null;

}