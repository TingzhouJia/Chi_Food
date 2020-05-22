
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'location.g.dart';

abstract class Location implements Built<Location,LocationBuilder>{
  static Serializer<Location> get serializer => _$locationSerializer;
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