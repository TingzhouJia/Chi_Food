

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'baseUser.g.dart';
abstract class BaseUser implements Built<BaseUser,BaseUserBuilder>{
  static Serializer<BaseUser> get serializer => _$baseUserSerializer;
  @nullable
  String get uid;
  String get username;
  @nullable
  String get foodie_level;
  @nullable
  String get photoUrl;
  String get foodie_color;
  String get primaryLocation;
  int get cityId;
  String get entityType;
  int get entityId;
  String get long;
  String get lat;
  BaseUser._();
  factory BaseUser([void Function(BaseUserBuilder) updates]) =_$BaseUser;
}