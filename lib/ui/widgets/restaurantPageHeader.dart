


import 'package:chifood/config.dart';
import 'package:chifood/ui/pages/restaurantScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver_persistent_header.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as Math;
class RestaurantPageHeader implements SliverPersistentHeaderDelegate{

  RestaurantArg index;

  RestaurantPageHeader(this.index);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {

    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Hero(
            tag: 'restuarant',
            child:  Image.asset(bannerList[index.id],fit: BoxFit.cover,)
        ),
        Positioned(
          bottom: 10,
          left: 50,
          right: 50,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Colors.redAccent.withOpacity(titleOpacity(shrinkOffset)),
            ),
            height: 100,

          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 120,
            color: shrinkOffset>240?Colors.white:Colors.transparent,
            child: ,
          ),
        ),

      ],
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 350;

  @override
  // TODO: implement minExtent
  double get minExtent => 100;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return true;
  }

  double titleOpacity(double shrink){
    return 1-Math.max(0.0, shrink)/maxExtent;
  }
  double newTitleOpacity(double shrink){
    return 1-Math.min(0.0, shrink)/maxExtent;
  }

  @override
  // TODO: implement snapConfiguration
  FloatingHeaderSnapConfiguration get snapConfiguration => null;

  @override
  // TODO: implement stretchConfiguration
  OverScrollHeaderStretchConfiguration get stretchConfiguration => null;

}