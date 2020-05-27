
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'locationLocation.g.dart';

abstract class LocationLocation implements Built<LocationLocation,LocationLocationBuilder>{
  static Serializer<LocationLocation> get serializer => _$locationLocationSerializer;
  String get entity_type;
  int get entity_id;
  String get title;
  String get latitude;
  String get longitude;
  int get  city_id;
  int get country_id;
  String get city_name;
  String get country_name;
  LocationLocation._();
  factory LocationLocation([void Function(LocationLocationBuilder) updates]) =_$LocationLocation;

}