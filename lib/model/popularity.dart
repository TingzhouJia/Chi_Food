import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'popularity.g.dart';

abstract class Popularity implements Built<Popularity,PopularityBuilder>{
 static Serializer<Popularity> get serializer => _$popularitySerializer;
 String get popularity;
 String get nightlife_index;
 BuiltList<String> get top_cuisines;


  Popularity._();
  factory Popularity([void Function(PopularityBuilder) updates]) =_$Popularity;

}

