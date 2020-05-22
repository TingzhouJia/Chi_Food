

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'baseUser.g.dart';
abstract class BaseUser implements Built<BaseUser,BaseUserBuilder>{
  static Serializer<BaseUser> get serializer => _$baseUserSerializer;
  String get uid;
  String get username;
  String get gender;
  String get foodie_level;
  String get photoUrl;
  String get foodie_color;
  String get primaryLocation;
  BaseUser._();
  factory BaseUser([void Function(BaseUserBuilder) updates]) =_$BaseUser;
}