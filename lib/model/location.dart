
import 'package:built_value/built_value.dart';

part 'location.g.dart';

abstract class Location implements Built<Location,LocationBuilder>{
  String get address;
  String get locality;
 String get city;
  double get latitude;
  double get longitude;
  num get  zipcode;
  num get country_id;
  Location._();
  factory Location([void Function(LocationBuilder) updates]) =_$Location;

}