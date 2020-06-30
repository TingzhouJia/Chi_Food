import 'package:chifood/bloc/restaurantBloc/restaurantBloc.dart';
import 'package:chifood/bloc/restaurantBloc/restaurantEvent.dart';
import 'package:chifood/config.dart';
import 'package:chifood/model/restaurants.dart';
import 'package:chifood/ui/widgets/dropdownHeader.dart';
import 'package:chifood/ui/widgets/restaurantContentList.dart';
import 'package:chifood/utils/priceDollor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RestaurantList extends StatefulWidget {
  List<Restaurants> restaurantList;
  List<GZXDropDownHeaderItem> filterChoice;
  Widget handler;
  RestaurantList({this.restaurantList,this.handler,this.filterChoice});

  @override
  _RestaurantListState createState() => _RestaurantListState();
}

class _RestaurantListState extends State<RestaurantList> {

  @override
  Widget build(BuildContext context) {
    List<String> choices=turnOrder(widget.filterChoice);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
          boxShadow: [
            BoxShadow(
                color: Color(0xfff4f4f3),
                offset: Offset(0.0, -3.0),
                spreadRadius: 2.0)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'All Restaurants',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  choices.length!=0?Text('Fileter by: ${choices.join(',')}'):Text('No Filter')
                ],
              ),
              GestureDetector(
                onTap: ()=>Navigator.of(context).pushNamed('/FilterRestaurants'),
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(Icons.sort),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xfff4f4f3)),
                    shape: BoxShape.circle,
                  ),
                ),
              )
            ],
          ),
          widget.restaurantList==null?widget.handler:RestaurantContentList(widget.restaurantList)
        ],
      ),
    );
  }

  List<String> turnOrder(List<GZXDropDownHeaderItem> source){
   return source.where((i) =>(i.title!='Distance'&&i.title!='Category'&&i.title!='Cuisine')).map((e) => e?.title);
  }


}
