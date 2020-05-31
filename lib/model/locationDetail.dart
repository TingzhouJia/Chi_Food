import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:chifood/model/locationLocation.dart';
import 'package:chifood/model/popularity.dart';
import 'package:chifood/model/restaurants.dart';

part 'locationDetail.g.dart';

abstract class LocationDetail implements Built<LocationDetail,LocationDetailBuilder>{
  static Serializer<LocationDetail> get serializer => _$locationDetailSerializer;
  BuiltList<Restaurants> get best_rated_restaurant;
  LocationDetail._();
  factory LocationDetail([void Function(LocationDetailBuilder) updates]) =_$LocationDetail;

}


