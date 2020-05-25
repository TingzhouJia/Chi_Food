import 'package:chifood/bloc/authBloc/AuthBloc.dart';
import 'package:chifood/bloc/authBloc/AuthState.dart';
import 'package:chifood/config.dart';
import 'package:chifood/ui/widgets/loginForm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignScreen extends StatefulWidget {
  @override
  _SignScreenState createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus();
        },
        child:BlocListener<AuthenticationBloc,AuthenticationState>(
          listener: (context,state){
            if(state is FailAuthenticated){
              Scaffold.of(context)..hideCurrentSnackBar() ..showSnackBar(
                SnackBar(
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Login Failure'), Icon(Icons.error)],
                  ),
                  backgroundColor: Colors.red,
                ),
              );
            } else if (state is Authenticated){
              Navigator.of(context).popAndPushNamed('/HomePage');
            }
          },
          child: SafeArea(
            top: false,
            bottom: false,
            child: Stack(
              children: <Widget>[
                Image.asset('${asset}signin.jpeg',fit: BoxFit.cover,width: double.infinity,height: double.infinity,),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.5,
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(45.0),topRight: Radius.circular(45.0)),
                    ),
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start ,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text("Please Sign In",style: TextStyle(fontWeight: FontWeight.bold),),
                        LoginForm()
                      ],
                    ),
                  ),
                )

              ],
            ),
          ),
        )
      ),
    );
  }
}
