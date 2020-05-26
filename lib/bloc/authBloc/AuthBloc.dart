
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chifood/bloc/authBloc/AuthEvent.dart';
import 'package:chifood/bloc/authBloc/AuthState.dart';
import 'package:chifood/bloc/implementation/FireAuthRepo.dart';
import 'package:chifood/model/baseUser.dart';



class AuthenticationBloc extends Bloc<AuthenticationEvent,AuthenticationState>{
  FireAuthRepo authRepo;
  AuthenticationBloc(this.authRepo);

  @override
  // TODO: implement initialState
  AuthenticationState get initialState => Uninitialized();

  @override
  Stream<AuthenticationState> mapEventToState(AuthenticationEvent event) async* {

    // TODO: implement mapEventToState
    if(event is VerifyAuth){
        yield* _mapVerifyToState();
    } else if( event is LoginEvent){

        yield* _mapLoginToState(event);
    } else if( event is SignUpEvent){

        yield* _mapSignUpToState(event);
    }
  }
  Stream<AuthenticationState> _mapVerifyToState() async*{
    bool log=false;
    BaseUser user;
      authRepo.isAuthenticated().listen((BaseUser curuser) {
        print(curuser);
       log=curuser==null;
       print(log);
       if(!log){
         user=curuser;
       }
     });

      if(log){
        print(log);
        yield Unauthenticated();
      }else{
        yield Authenticated(user);
      }


  }

  Stream<AuthenticationState> _mapLoginToState(LoginEvent event) async*{
   final user= await authRepo.login(event.username, event.password);
   if(user==null){
     yield FailAuthenticated();
   }else{
     yield Authenticated(user);
   }
  }
  Stream<AuthenticationState> _mapSignUpToState(SignUpEvent event) async*{
    final user= await authRepo.signUp(event.email, event.password,event.userInfo);
    if(user==null){
      yield FailAuthenticated();
    }else{
      yield Authenticated(user);
    }
  }

}