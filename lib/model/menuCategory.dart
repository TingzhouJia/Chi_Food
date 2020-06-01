import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'menuCategory.g.dart';

abstract class MenuCategory implements Built<MenuCategory,MenuCategoryBuilder>{
  static Serializer<MenuCategory> get serializer => _$menuCategorySerializer;
  String get strCategory;

  MenuCategory._();
  factory MenuCategory([void Function(MenuCategoryBuilder) updates]) =_$MenuCategory;

}