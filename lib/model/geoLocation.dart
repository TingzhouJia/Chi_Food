
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:chifood/model/location.dart';
import 'package:chifood/model/locationLocation.dart';
import 'package:chifood/model/popularity.dart';
import 'package:chifood/model/restaurants.dart';

part 'geoLocation.g.dart';
abstract class GeoLocation implements Built<GeoLocation,GeoLocationBuilder>{
  static Serializer<GeoLocation> get serializer => _$geoLocationSerializer;
  LocationLocation get location;
  Popularity get popularity;
  BuiltList<Restaurants> get nearby_restaurants;

  GeoLocation._();
  factory GeoLocation([void Function(GeoLocationBuilder) updates]) =_$GeoLocation;
}