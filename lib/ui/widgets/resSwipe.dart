import 'package:built_collection/built_collection.dart';
import 'package:chifood/model/restaurants.dart';
import 'package:chifood/ui/pages/restaurantScreen.dart';
import 'package:chifood/utils/priceDollor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import '../../config.dart';

class ResSwiper extends StatefulWidget {
  List<Restaurants> restaurantlist;

  ResSwiper(this.restaurantlist);

  @override
  _ResSwiperState createState() => _ResSwiperState();
}

class _ResSwiperState extends State<ResSwiper> {

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemCount: 4,
      itemBuilder: _build,
      containerWidth: 200,
      containerHeight: 200,
      pagination: SwiperPagination(
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(top: 120),
          builder: DotSwiperPaginationBuilder(
              color: Colors.grey,
              activeColor: Colors.black,
              space: 3.0,
              activeSize: 14.0)),
      controller: SwiperController(),
      scrollDirection: Axis.horizontal,
    );
  }
  Widget _build(BuildContext, int index) {
    Restaurants curRes=widget.restaurantlist[index];
    return GestureDetector(
      onTap: ()=>Navigator.pushNamed(context, '/Restaurant',arguments: RestaurantArg(index)),
      child: Hero(
        tag: 'restuarant',
        createRectTween: (Rect begin, Rect end) {
          return RectTween(
            begin: Rect.fromLTRB(
                begin.left, begin.top, begin.right, begin.bottom),
            end: Rect.fromLTRB(end.left, end.top, end.right, end.bottom),
          );
        },
        child: Container(
          width: 200,
          height: 200,
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 60, top: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              image: DecorationImage(
                  image: AssetImage(bannerList[index]), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.white),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          border:
                          Border(bottom: BorderSide(color: Colors.black54))),
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
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            Text(curRes.user_rating.aggregate_rating)
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Votes:',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(curRes.user_rating.votes)
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text('Average spent:'),
                            Text(getAvergePayIcon(curRes.price_range))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
