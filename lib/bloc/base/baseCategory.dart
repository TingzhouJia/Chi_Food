import 'package:chifood/model/category.dart';
import 'package:chifood/model/cuisine.dart';
import 'package:chifood/model/dailyMenu.dart';
import 'package:chifood/model/establishment.dart';
import 'package:flutter/cupertino.dart';

abstract class BaseSelection{
  Future<List<Category>> getCategories();
  Future<List<Cuisine>> getCuisines({@required int city_id,double lat,double lon});
  Future<List<Establishment>> getEstablishments({@required int city_id,double lat,double lon});
}