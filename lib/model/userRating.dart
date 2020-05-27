import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'userRating.g.dart';

abstract class UserRating implements Built<UserRating,UserRatingBuilder>{
  static Serializer<UserRating> get serializer => _$userRatingSerializer;
  String get aggregate_rating;
  String get rating_text;
  String get rating_color;
  String get votes;

  UserRating._();
  factory UserRating([void Function(UserRatingBuilder) updates]) =_$UserRating;

}