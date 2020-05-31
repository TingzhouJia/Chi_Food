

import 'package:chifood/model/dailyMenu.dart';
import 'package:chifood/model/restaurants.dart';
import 'package:chifood/model/review.dart';
import 'package:chifood/model/yelpBusiness.dart';
import 'package:chifood/model/yelpReview.dart';
import 'package:equatable/equatable.dart';

abstract class RestaurantState extends Equatable{

  RestaurantState();
  @override
  List<Object> get props => [];
}

class LoadedRestaurantInfoState extends RestaurantState{
  LoadedRestaurantInfoState({this.reviewList, this.menu, this.restaurant,this.business,this.yelpReivwList});
  List<Review> reviewList;
  DailyMenu menu;
  Restaurants restaurant;
  YelpBusiness business;
  List<YelpReview> yelpReivwList;


  @override
  List<Object> get props=>[reviewList,menu,restaurant,business,yelpReivwList];
}

class LoadingRestaurantInfoState extends RestaurantState{}

class LoadFailRestaurantState extends RestaurantState{}