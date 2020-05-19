import 'package:built_value/built_value.dart';

part 'popularity.g.dart';

abstract class Popularity implements Built<Popularity,PopularityBuilder>{
 double get popularity;
 double get nightlife_index;
 List<String> get top_cuisines;

  Popularity._();
  factory Popularity([void Function(PopularityBuilder) updates]) =_$Popularity;

}

