import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Row(children: <Widget>[Icon(Icons.arrow_back_ios),Text('Profile')],),
        actions: <Widget>[Icon(Icons.edit)],
      ),
      body: SafeArea(
        bottom: false,
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[

            ],
          ),
        ),
      ),
    );
  }
}
