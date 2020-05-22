import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dish.g.dart';
abstract class Dish implements Built<Dish,DishBuilder>{
  static Serializer<Dish> get serializer => _$dishSerializer;
  String get dish_id;
  String get name;
  String get price;
  Dish._();
  factory Dish([void Function(DishBuilder) updates]) =_$Dish;
}