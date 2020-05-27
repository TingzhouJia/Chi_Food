
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category.g.dart';
abstract class Category implements Built<Category,CategoryBuilder>{
  static Serializer<Category> get serializer => _$categorySerializer;
  int get id;
  String get name;
  Category._();
  factory Category([void Function(CategoryBuilder) updates]) =_$Category;
}