import 'package:chifood/model/category.dart';
import 'package:chifood/model/cuisine.dart';
import 'package:chifood/model/dailyMenu.dart';
import 'package:chifood/model/establishment.dart';
import 'package:chifood/model/geoLocation.dart';
import 'package:chifood/model/locationDetail.dart';
import 'package:chifood/model/restaurants.dart';
import 'package:flutter/cupertino.dart';

abstract class BaseSelection{
  Future<List<Category>> getCategories();
  Future<List<Cuisine>> getCuisines({@required int city_id,String lat,String lon});
  Future<List<Establishment>> getEstablishments({@required int city_id,String lat,String lon});
  Future<GeoLocation> getGeoLocation({@required String lat,@required String lon});
  Future<List<Restaurants>> getLocationDetail({@required String entity_id,@required String entity_type});
}