import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'yelpLocation.g.dart';

abstract class YelpLocation implements Built<YelpLocation,YelpLocationBuilder>{
  static Serializer<YelpLocation> get serializer => _$yelpLocationSerializer;
  String get address1;
  String get city;
  String get zip_code;
  String get country;
  List<String> get display_address;

  YelpLocation._();
  factory YelpLocation([void Function(YelpLocationBuilder) updates]) =_$YelpLocation;

}