import 'package:chifood/model/category.dart';
import 'package:chifood/model/cuisine.dart';
import 'package:chifood/model/dailyMenu.dart';

abstract class BaseSelection{
  Future<List<Category>> getCategories();
  Future<List<Cuisine>> getCuisines();
  Future<DailyMenu> getDailyMenu();

}