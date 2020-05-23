
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
    }
  }
  Stream<AuthenticationState> _mapVerifyToState() async*{
    bool verified;
    BaseUser cuUser;
      authRepo.getAuthenticationStateChange().listen((user){
        if(user==null){
          verified=false;
        }else{
          verified=true;
          cuUser=user;
        }
    });
     if(verified){
       yield Authenticated(cuUser);
     }else{
       yield Unauthenticated();
     }
  }

}