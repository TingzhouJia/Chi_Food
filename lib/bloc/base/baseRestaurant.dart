import 'dart:async';

import 'package:chifood/model/dailyMenu.dart';
import 'package:chifood/model/restaurants.dart';
import 'package:chifood/model/review.dart';
import 'package:chifood/model/yelpBusiness.dart';
import 'package:chifood/model/yelpReview.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

abstract class BaseRestaurant{
    Future<Restaurants> fetchRestaurant({@required String res_id});
    Future<DailyMenu> fetchDailyMenu({@required String res_id});
    Future<List<Review>> fetchReviews( {int start,int count,@required String res_id});
    Future<List<YelpReview>> getYelpBusinessReview({String id});
    Future<YelpBusiness> getYelpBusiness({String term,String location,String locale,String latitude,String longitude});
}