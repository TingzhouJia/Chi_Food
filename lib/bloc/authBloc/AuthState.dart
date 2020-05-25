import 'package:chifood/model/baseUser.dart';
import 'package:equatable/equatable.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

class Uninitialized extends AuthenticationState {}

class Authenticated extends AuthenticationState {
  final BaseUser user;

  const Authenticated(this.user);

  @override
  List<Object> get props => [user];


}

class Authenticating extends AuthenticationState{}

class FailAuthenticated extends AuthenticationState{}

class Unauthenticated extends AuthenticationState {}