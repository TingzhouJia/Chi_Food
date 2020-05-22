
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category.g.dart';
abstract class Category implements Built<Category,CategoryBuilder>{
  static Serializer<Category> get serializer => _$categorySerializer;
  String get category_id;
  String get category_name;
  Category._();
  factory Category([void Function(CategoryBuilder) updates]) =_$Category;
}