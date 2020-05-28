import 'package:chifood/config.dart';
import 'package:chifood/ui/pages/restaurantScreen.dart';
import 'package:chifood/ui/widgets/restaurantInfoContainer.dart';
import 'package:chifood/utils/priceDollor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver_persistent_header.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as Math;

class RestaurantPageHeader implements SliverPersistentHeaderDelegate {
  RestaurantArg index;

  RestaurantPageHeader(this.index);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Hero(
      tag: 'restaurant',
      createRectTween: (Rect begin, Rect end) {
        return RectTween(
          begin: Rect.fromLTRB(
              begin.left, begin.top, begin.right, begin.bottom),
          end: Rect.fromLTRB(end.left, end.top, end.right, end.bottom),
        );
      },
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            bannerList[index.id],
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap:(){
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color:
                        Colors.white.withOpacity(titleOpacity(shrinkOffset)),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 20.0,
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white
                              .withOpacity(titleOpacity(shrinkOffset)),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.file_upload,
                          size: 20.0,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white
                              .withOpacity(titleOpacity(shrinkOffset)),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.favorite,
                          size: 20.0,
                          color: Colors.redAccent,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 10,
              left: 50,
              right: 50,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 550),
                opacity: titleOpacity(shrinkOffset),
                child: RestaurantInfoCard(index.restaurants),
              )),
          shrinkOffset > 170?Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(

              decoration: BoxDecoration(
                color:  Colors.white ,
              ),
              padding: EdgeInsets.symmetric(vertical: 60, horizontal: 25.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: ()=>Navigator.of(context).pop(),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 17.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          index.restaurants.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                        Container(
                          constraints: BoxConstraints(
                              minWidth:
                              MediaQuery.of(context).size.width *
                                  0.7),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  ),
                                  Text(index.restaurants.user_rating
                                      .aggregate_rating)
                                ],
                              ),
                              Row(
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Votes:',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Text(
                                      index.restaurants.user_rating.votes)
                                ],
                              ),
                              Row(
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('Average spent:'),
                                  Text(getAvergePayIcon(
                                      index.restaurants.price_range))
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ),
          ):SizedBox(width: 1,),
        ],
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 300;

  @override
  // TODO: implement minExtent
  double get minExtent => 130;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return true;
  }

  double titleOpacity(double shrink) {
    return 1 - Math.max(0.0, shrink) / maxExtent;
  }

  double newTitleOpacity(double shrink) {
    return 1 - Math.min(0.0, shrink) / maxExtent;
  }

  @override
  // TODO: implement snapConfiguration
  FloatingHeaderSnapConfiguration get snapConfiguration => null;

  @override
  // TODO: implement stretchConfiguration
  OverScrollHeaderStretchConfiguration get stretchConfiguration => null;
}
