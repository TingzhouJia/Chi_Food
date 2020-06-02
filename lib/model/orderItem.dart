import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:chifood/model/menuItem.dart';
import 'package:chifood/model/restaurants.dart';

import 'package:chifood/model/review.dart';
import 'package:chifood/model/reviewUser.dart';
import 'package:chifood/ui/pages/restaurantScreen.dart';

part 'orderItem.g.dart';

abstract class OrderItem implements Built<OrderItem,OrderItemBuilder>{
  static Serializer<OrderItem> get serializer => _$orderItemSerializer;
  @nullable
  String get id;
  String get strMeal;
  String get strMealThumb;
  String get idMeal;
  double get price;
  int get count;
  @nullable
  Restaurants get restaurant;



  OrderItem._();
  factory OrderItem([void Function(OrderItemBuilder) updates]) =_$OrderItem;

}