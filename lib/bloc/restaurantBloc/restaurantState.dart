

import 'package:chifood/model/dailyMenu.dart';
import 'package:chifood/model/restaurants.dart';
import 'package:chifood/model/review.dart';
import 'package:equatable/equatable.dart';

abstract class RestaurantState extends Equatable{

  RestaurantState();
  @override
  List<Object> get props => [];
}

class LoadedRestaurantInfoState extends RestaurantState{
  List<Review> reviewList;
  DailyMenu menu;
  Restaurants restaurant;

  LoadedRestaurantInfoState({this.reviewList, this.menu, this.restaurant});

  @override
  List<Object> get props=>[reviewList,menu,restaurant];
}

class LoadingRestaurantInfoState extends RestaurantState{}

class LoadFailRestaurantState extends RestaurantState{}