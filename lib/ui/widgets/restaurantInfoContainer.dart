
import 'package:chifood/model/restaurants.dart';
import 'package:chifood/utils/priceDollor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RestaurantInfoCard extends StatelessWidget {
  Restaurants curRes;

  RestaurantInfoCard(this.curRes);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black54))),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      curRes.name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17.0),
                    ),
                    Text(
                      curRes.location.address,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                    ),
                    SizedBox(height: 5,),
                  ],
                ),

              ],
            ),
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 18.0,
                  ),
                  Text(curRes.user_rating.aggregate_rating, style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Votes:',

                  ),
                  Text(curRes.user_rating.votes, style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Average spent:'),
                  Text(getAvergePayIcon(curRes.price_range),style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
