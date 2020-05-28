
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'location.g.dart';

abstract class Location implements Built<Location,LocationBuilder>{
  static Serializer<Location> get serializer => _$locationSerializer;
  @nullable
  String get locality;
  @nullable
  String get address;
  @nullable
  String get city;
  String get latitude;
  String get longitude;
  String get  zipcode;
  num get country_id;
  Location._();
  factory Location([void Function(LocationBuilder) updates]) =_$Location;


}