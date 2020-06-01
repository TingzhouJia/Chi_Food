import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:chifood/model/restaurants.dart';

import 'package:chifood/model/review.dart';
import 'package:chifood/model/reviewUser.dart';

part 'menuItem.g.dart';

abstract class MenuItem implements Built<MenuItem,MenuItemBuilder>{
  static Serializer<MenuItem> get serializer => _$menuItemSerializer;
  String get strMeal;
  String get strMealThumb;
  String get idMeal;


  MenuItem._();
  factory MenuItem([void Function(MenuItemBuilder) updates]) =_$MenuItem;

}