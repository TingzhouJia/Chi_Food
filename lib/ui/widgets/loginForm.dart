import 'package:chifood/bloc/authBloc/AuthBloc.dart';
import 'package:chifood/bloc/authBloc/AuthEvent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginForm extends StatefulWidget {


  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _checkAndSubmit(){
    BlocProvider.of<AuthenticationBloc>(context).add(LoginEvent(_emailController.text,_passwordController.text));
  }
  bool get isPopulated =>
      _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidate: true,
      child: Column(

        children: <Widget>[
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
              icon: Icon(Icons.email),
              labelText: 'Email',
            ),
            keyboardType: TextInputType.emailAddress,
            autovalidate: true,
            autocorrect: false,
            validator: EmailValidator(errorText: "enter a vaild email"),
          ),
          TextFormField(
            controller: _passwordController,
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: 'Password',
            ),
            obscureText: true,
            autovalidate: true,
            autocorrect: false,
            validator: RequiredValidator(errorText: "please enter the password"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  onPressed: (){
                    if(isPopulated){
                      _checkAndSubmit();
                    }else{

                    }
                  },
                  child: Text('Login'),
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  onPressed: ()=>Navigator.of(context).pushNamed('/SignUp'),
                  child: Text('Sign Up'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
