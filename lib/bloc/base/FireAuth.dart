import 'package:chifood/model/baseUser.dart';

abstract class FireAuth{
  Future<void> logOut();
  Future<BaseUser> login(String email,String password);
  Future<BaseUser> signUp(String email,String password,BaseUser userInfo);
  Future<BaseUser> isAuthenticated();
  Future<BaseUser> getUser();

}