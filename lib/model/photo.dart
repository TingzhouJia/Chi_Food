
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:chifood/model/review.dart';
import 'package:chifood/model/reviewUser.dart';

part 'photo.g.dart';

abstract class Photo implements Built<Photo,PhotoBuilder>{
  static Serializer<Photo> get serializer => _$photoSerializer;
  String get id;
  String get url;
  String get thumb_url;
  ReviewUser get user;
  String get res_id;
  String get caption;
  String get timestamp;
  String get friendly_time;
  int get width;
  int get height;
  int get comments_count;
  int get likes_count;

  Photo._();
  factory Photo([void Function(PhotoBuilder) updates]) =_$Photo;

}