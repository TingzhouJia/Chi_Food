
import 'package:built_value/built_value.dart';

part 'locationLocation.g.dart';

abstract class LocationLocation implements Built<LocationLocation,LocationLocationBuilder>{
  String get entity_type;
  int get entity_id;
  String get title;
  double get latitude;
  double get longitude;
  int get  city_id;
  int get country_id;
  String get city_name;
  String get country_name;
  LocationLocation._();
  factory LocationLocation([void Function(LocationLocationBuilder) updates]) =_$LocationLocation;

}