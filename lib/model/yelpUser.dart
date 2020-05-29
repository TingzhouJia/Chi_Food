import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'yelpUser.g.dart';

abstract class YelpUser implements Built<YelpUser,YelpUserBuilder>{
  static Serializer<YelpUser> get serializer => _$yelpUserSerializer;
  String get id;
  String get profile_url;
  String get image_url;
  String get name;

  YelpUser._();
  factory YelpUser([void Function(YelpUserBuilder) updates]) =_$YelpUser;

}