import 'package:chifood/model/baseUser.dart';
import 'package:equatable/equatable.dart';

abstract class UserState extends Equatable{

 const UserState();
  @override
  List<Object> get props => [];
}

class LoadedUserState extends UserState{
  BaseUser curUser;

  LoadedUserState(this.curUser);

  @override
  List<Object> get props=>[curUser];

}

class LoadUserFail extends UserState{

}

class LoadingUserState extends UserState{}