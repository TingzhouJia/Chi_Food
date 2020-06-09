import 'package:chifood/bloc/mealBloc/mealBloc.dart';
import 'package:chifood/bloc/mealBloc/menuEvent.dart';
import 'package:chifood/bloc/restaurantBloc/restaurantBloc.dart';
import 'package:chifood/bloc/restaurantBloc/restaurantEvent.dart';
import 'package:chifood/model/restaurants.dart';
import 'package:chifood/ui/pages/restaurantScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config.dart';

class RestaurantContentList extends StatefulWidget {
  List<Restaurants> restaurantList;

  RestaurantContentList(this.restaurantList);

  @override
  _RestaurantContentListState createState() => _RestaurantContentListState();
}

class _RestaurantContentListState extends State<RestaurantContentList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(

        itemBuilder: _build,
        itemCount: widget.restaurantList.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics());
  }
  Widget _build(BuildContext context, int index) {
    Restaurants curRes = widget.restaurantList[index];
    return GestureDetector(
      onTap: () {
        BlocProvider.of<RestaurantBloc>(context)
          ..add(LoadRestaurantAllInfoEvent(curRes));
        BlocProvider.of<MenuBloc>(context).add(LoadMenuEvent());
        Navigator.pushNamed(context,'/Restaurant',arguments: RestaurantArg(index%4,curRes));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            boxShadow: [
              BoxShadow(
                  color: Color(0xfff4f4f3),
                  offset: Offset(0.5, 1.5),
                  spreadRadius: 2.0,
                  blurRadius: 1.5)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 5.0),
              decoration: BoxDecoration(border: Border(bottom: BorderSide())),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        curRes.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width*0.7),
                        child: Text(
                          curRes.location.address,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        image: DecorationImage(
                            image: AssetImage('${icon}pizza.png'),
                            fit: BoxFit.cover)),
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
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
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
                      Text(curRes.average_cost_for_two.toString())
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

