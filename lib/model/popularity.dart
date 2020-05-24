import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'popularity.g.dart';

abstract class Popularity implements Built<Popularity,PopularityBuilder>{
 static Serializer<Popularity> get serializer => _$popularitySerializer;
 double get popularity;
 double get nightlife_index;
 List<String> get top_cuisines;
 @nullable
 List<String> get nearby_res;

  Popularity._();
  factory Popularity([void Function(PopularityBuilder) updates]) =_$Popularity;

}

