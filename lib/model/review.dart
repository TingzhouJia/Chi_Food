import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:chifood/model/reviewUser.dart';

part 'review.g.dart';

abstract class Review implements Built<Review,ReviewBuilder>{
  static Serializer<Review> get serializer => _$reviewSerializer;
  String get rating;
  String get review_text;
  String get id;
  String get rating_color;
  String get review_time_friendly;
  String get rating_text;
  String get timestamp;
  num get likes;
  ReviewUser get users;
  num get comments_count;
  Review._();
  factory Review([void Function(ReviewBuilder) updates]) =_$Review;

}