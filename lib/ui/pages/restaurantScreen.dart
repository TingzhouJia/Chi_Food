import 'dart:async';

import 'package:chifood/bloc/mealBloc/mealBloc.dart';
import 'package:chifood/bloc/mealBloc/menuState.dart';
import 'package:chifood/bloc/orderBloc/orderBloc.dart';
import 'package:chifood/bloc/orderBloc/orderState.dart';
import 'package:chifood/bloc/restaurantBloc/restaurantBloc.dart';
import 'package:chifood/bloc/restaurantBloc/restaurantState.dart';
import 'package:chifood/config.dart';
import 'package:chifood/model/restaurants.dart';
import 'package:chifood/ui/widgets/draggeableCart.dart';
import 'package:chifood/ui/widgets/errorWidget.dart';
import 'package:chifood/ui/widgets/loadingWidget.dart';

import 'package:chifood/ui/widgets/restaurantScrollView.dart';
import 'package:chifood/ui/widgets/restaurantTab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class RestaurantScreen extends StatefulWidget {
  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  ScrollController _controller;
  bool dark = false;
  static OverlayEntry entry;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = new ScrollController();
    _controller.addListener(() {
      if (_controller.offset > 220) {
        dark = true;
        setState(() {});
      }
      if(_controller.offset<=220){
        dark = false;
        setState(() {});
      }
    });

  }
   @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    RestaurantArg args = ModalRoute.of(context).settings.arguments;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: dark ? SystemUiOverlayStyle.dark : SystemUiOverlayStyle.light,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          body:BlocBuilder<MenuBloc,MenuState>(
            builder: (BuildContext context,MenuState state){
              if(state is LoadMenuState){

                return Stack(
                  children: <Widget>[
                    RestaurantScrollView(arg: args,controller: _controller,state: state,),
                    BlocBuilder<OrderBloc,OrderState>(
                      builder: (BuildContext context,OrderState orderState){
                        if(orderState is OrderListState){
                          return AppFloatBox(orderState.orderList.length);
                        }else{
                          return SizedBox(width: 1,);
                        }
                      },
                    )
                  ],
                );
              }else if(state is LoadingMenuState){
                return MyLoading();
              }
              return MyErrorWidget();
            },
          ),
        ),
      ),
    );
  }
}

class RestaurantArg {
  final int id;
  final Restaurants restaurants;

  RestaurantArg(this.id, this.restaurants);
}

class StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  StickyTabBarDelegate({@required this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return this.child;
  }

  @override
  double get maxExtent => 70;
  @override
  double get minExtent => 70;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}