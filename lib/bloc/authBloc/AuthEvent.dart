

import 'package:chifood/model/baseUser.dart';
import 'package:equatable/equatable.dart';



abstract class AuthenticationEvent extends Equatable {

  @override
  List<Object> get props => [];
}

class VerifyAuth extends AuthenticationEvent{
  @override
  List<Object> get props => [];
}


class LoginEvent extends AuthenticationEvent{
  String username;
  String password;

  LoginEvent(this.username, this.password);

}



class SignUpEvent extends AuthenticationEvent{
    BaseUser userInfo;
    String password;
    String email;
    SignUpEvent({this.userInfo, this.password, this.email});

    @override
  // TODO: implement props
  List<Object> get props => null;

}


