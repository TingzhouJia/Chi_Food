

import 'package:equatable/equatable.dart';



abstract class AuthenticationEvent extends Equatable {}

class VerifyAuth extends AuthenticationEvent{
  @override
  List<Object> get props => [];
}
