

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Address Delivery',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600),),
      ),
      body: SingleChildScrollView(

      ),
    );
  }
}
