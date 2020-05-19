import 'package:built_value/built_value.dart';

part 'userRating.g.dart';

abstract class UserRating implements Built<UserRating,UserRatingBuilder>{
  String get aggregate_rating;
  String get rating_text;
  String get rating_color;
  int get votes;

  UserRating._();
  factory UserRating([void Function(UserRatingBuilder) updates]) =_$UserRating;

}