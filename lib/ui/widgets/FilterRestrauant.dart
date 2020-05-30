import 'package:chifood/bloc/restaurantBloc/restaurantBloc.dart';
import 'package:chifood/bloc/restaurantBloc/restaurantEvent.dart';
import 'package:chifood/config.dart';
import 'package:chifood/model/restaurants.dart';
import 'package:chifood/utils/priceDollor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RestaurantList extends StatefulWidget {
  List<Restaurants> _restaurantList;

  RestaurantList(this._restaurantList);

  @override
  _RestaurantListState createState() => _RestaurantListState();
}

class _RestaurantListState extends State<RestaurantList> {
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 16.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0),topRight: Radius.circular(15.0)),
          boxShadow: [BoxShadow(color: Color(0xfff4f4f3),offset: Offset(0.0,-3.0),spreadRadius: 2.0)]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  border: Border.all(color: Color(0xfff4f4f3)),
                  shape: BoxShape.circle,

                ),
              )

            ],
          ),
          ListView.builder(itemBuilder: _build,itemCount: widget._restaurantList.length,shrinkWrap: true,physics: NeverScrollableScrollPhysics())
        ],
      ),
    );
  }
  Widget _build(BuildContext context,int index){
    Restaurants curRes=widget._restaurantList[index];
    return GestureDetector(
      onTap: (){
        BlocProvider.of<RestaurantBloc>(context)..add(LoadRestaurantAllInfoEvent(curRes));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          boxShadow: [
            BoxShadow(color: Color(0xfff4f4f3),offset: Offset(0.5,1.5),spreadRadius: 2.0,blurRadius: 1.5)
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 10.0),
                decoration: BoxDecoration(

                  border: Border(bottom: BorderSide())
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(curRes.name),
                        Text(curRes.location.locality)
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          image: DecorationImage(image: AssetImage('${icon}pizza.png'),fit: BoxFit.cover)
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.star,color: Colors.orange,),
                        Text(curRes.user_rating.aggregate_rating)
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.people),
                        Text(curRes.user_rating.votes)
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.attach_money),
                        Text(getAvergePayIcon(curRes.average_cost_for_two))
                      ],
                    ),
                  ],
                ),
              )

            ],
        ),
      ),
    );
  }
}
