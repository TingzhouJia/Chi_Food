import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:chifood/model/dish.dart';

part 'dailyMenu.g.dart';
abstract class DailyMenu implements Built<DailyMenu,DailyMenuBuilder>{
  static Serializer<DailyMenu> get serializer => _$dailyMenuSerializer;
  String get daily_menu_id;
  String get name;
  DateTime get start_date;
  DateTime get end_date;
  BuiltList<Dish> get dishes;

  DailyMenu._();
  factory DailyMenu([void Function(DailyMenuBuilder) updates]) =_$DailyMenu;
}