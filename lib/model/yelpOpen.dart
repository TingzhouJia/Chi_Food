


import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'yelpOpen.g.dart';

abstract class YelpOpen implements Built<YelpOpen,YelpOpenBuilder>{
  static Serializer<YelpOpen> get serializer => _$yelpOpenSerializer;
  bool get is_overnight;
  String get start;
  String get end;
  String get day;


  YelpOpen._();
  factory YelpOpen([void Function(YelpOpenBuilder) updates]) =_$YelpOpen;

}