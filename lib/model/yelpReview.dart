
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:chifood/model/yelpUser.dart';

part 'yelpReview.g.dart';

abstract class YelpReview implements Built<YelpReview,YelpReviewBuilder>{
  static Serializer<YelpReview> get serializer => _$yelpReviewSerializer;
  String get id;
  YelpUser get user;
  String get text;
  String get time_created;



  YelpReview._();
  factory YelpReview([void Function(YelpReviewBuilder) updates]) =_$YelpReview;

}