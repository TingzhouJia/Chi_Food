
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:chifood/model/yelpCoordinate.dart';
import 'package:chifood/model/yelpLocation.dart';
import 'package:chifood/model/yelpOpen.dart';


part 'yelpBusiness.g.dart';

abstract class YelpBusiness implements Built<YelpBusiness,YelpBusinessBuilder>{
  static Serializer<YelpBusiness> get serializer => _$yelpBusinessSerializer;
  String get id;
  String get alias;
  String get name;
  String get image_url;
  String get phone;
  double get rating;
  YelpLocation get location;
  YelpCoordinate get coordinates;
  List<String> get photos;
  String get price;
  @nullable
  BuiltList<YelpOpen> get open;


  YelpBusiness._();
  factory YelpBusiness([void Function(YelpBusinessBuilder) updates]) =_$YelpBusiness;

}