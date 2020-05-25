import 'package:chifood/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignScreen extends StatefulWidget {
  @override
  _SignScreenState createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                height: MediaQuery.of(context).size.width*0.4,

              ),
            )


          ],
        ),
      ),
    );
  }
}
