

import 'package:built_collection/built_collection.dart';
import 'package:built_collection/built_collection.dart';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:chifood/model/location.dart';
import 'package:chifood/model/photo.dart';
import 'package:chifood/model/review.dart';
import 'package:chifood/model/userRating.dart';

part 'restaurants.g.dart';
abstract class Restaurants implements Built<Restaurants,RestaurantsBuilder>{
  static Serializer<Restaurants> get serializer => _$restaurantsSerializer;
  @nullable
  String get id;
  @nullable
  String get name;
  @nullable
  String get url;
  @nullable
  Location get location;
  @nullable
  int get average_cost_for_two;
  @nullable
  String get cuisines;
  @nullable
  int get price_range;
  @nullable
  String get currency;
  @nullable
  String get thumb;
  @nullable
  String get featured_image;
  @nullable
  String get photos_url;
  @nullable
  String get menu_url;
  @nullable
  String get events_url;
  @nullable
  UserRating get user_rating;
  @nullable
  int get has_online_delivery;
  @nullable
  int get is_delivering_now;
  @nullable
  int get has_table_booking;
  String get deeplink;
  @nullable
  String get timing;
  @nullable
  int get all_reviews_count;
  @nullable
  int get photo_count;
  @nullable
  String get phone_numbers;
  @nullable
  BuiltList<Photo> get photos;

  Restaurants._();
  factory Restaurants([void Function(RestaurantsBuilder) updates]) =_$Restaurants;

}