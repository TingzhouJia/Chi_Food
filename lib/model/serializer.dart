import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:chifood/model/baseUser.dart';
import 'package:chifood/model/category.dart';
import 'package:chifood/model/cuisine.dart';
import 'package:chifood/model/dailyMenu.dart';
import 'package:chifood/model/dish.dart';
import 'package:chifood/model/establishment.dart';
import 'package:chifood/model/geoLocation.dart';
import 'package:chifood/model/location.dart';
import 'package:chifood/model/locationDetail.dart';
import 'package:chifood/model/locationLocation.dart';
import 'package:chifood/model/menuCategory.dart';
import 'package:chifood/model/menuItem.dart';
import 'package:chifood/model/photo.dart';
import 'package:chifood/model/popularity.dart';
import 'package:chifood/model/restaurants.dart';
import 'package:chifood/model/review.dart';

import 'package:chifood/model/reviewUser.dart';
import 'package:chifood/model/searchResult.dart';
import 'package:chifood/model/userRating.dart';
import 'package:chifood/model/yelpBusiness.dart';
import 'package:chifood/model/yelpCoordinate.dart';
import 'package:chifood/model/yelpLocation.dart';
import 'package:chifood/model/yelpOpen.dart';
import 'package:chifood/model/yelpReview.dart';
import 'package:chifood/model/yelpUser.dart';

part 'serializer.g.dart';

@SerializersFor([BaseUser,Location,LocationLocation,LocationDetail,Photo,Popularity,Restaurants,Review,ReviewUser,UserRating,
  SearchResult,Establishment,Cuisine,GeoLocation,DailyMenu,Category,Dish,YelpUser,YelpCoordinate,YelpLocation,YelpOpen,YelpReview,YelpBusiness,MenuItem,MenuCategory])

final Serializers serializer = _$serializer;
Serializers standardSerializers = (serializer.toBuilder()..addPlugin(StandardJsonPlugin())).build();