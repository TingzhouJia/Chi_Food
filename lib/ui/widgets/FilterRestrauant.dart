import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RestaurantList extends StatefulWidget {
  @override
  _RestaurantListState createState() => _RestaurantListState();
}

class _RestaurantListState extends State<RestaurantList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0),topRight: Radius.circular(15.0)),
        boxShadow: [BoxShadow(color: Color(0xfff4f4f3),offset: Offset(0.0,2.0),spreadRadius: 2.0)]
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text('All Restaurants',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                  Text('No Filter')
                ],
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Icon(Icons.sort),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,

                ),
              )

            ],
          ),
          ListView.builder(itemBuilder: _build,itemCount: 5,)
        ],
      ),
    );
  }
  Widget _build(BuildContext context,int index){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
      child: Column(
          children: <Widget>[
            Row(

            )
          ],
      ),
    );
  }
}
