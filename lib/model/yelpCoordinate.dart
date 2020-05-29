import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'yelpCoordinate.g.dart';

abstract class YelpCoordinate implements Built<YelpCoordinate,YelpCoordinateBuilder>{
  static Serializer<YelpCoordinate> get serializer => _$yelpCoordinateSerializer;
  double get latitude;
  double get longitude;



  YelpCoordinate._();
  factory YelpCoordinate([void Function(YelpCoordinateBuilder) updates]) =_$YelpCoordinate;

}