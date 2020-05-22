import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:chifood/model/baseUser.dart';
import 'package:chifood/model/location.dart';
import 'package:chifood/model/locationDetail.dart';
import 'package:chifood/model/locationLocation.dart';
import 'package:chifood/model/photo.dart';
import 'package:chifood/model/popularity.dart';
import 'package:chifood/model/restaurants.dart';
import 'package:chifood/model/review.dart';

import 'package:chifood/model/reviewUser.dart';
import 'package:chifood/model/searchResult.dart';
import 'package:chifood/model/userRating.dart';

part 'serializer.g.dart';

@SerializersFor([BaseUser,Location,LocationLocation,LocationDetail,Photo,Popularity,Restaurants,Review,ReviewUser,UserRating,SearchResult])

final Serializers serializer = _$serializer;