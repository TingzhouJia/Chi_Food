import 'package:built_collection/built_collection.dart';
import 'package:chifood/bloc/mealBloc/mealBloc.dart';
import 'package:chifood/bloc/mealBloc/menuEvent.dart';
import 'package:chifood/bloc/restaurantBloc/restaurantBloc.dart';
import 'package:chifood/bloc/restaurantBloc/restaurantEvent.dart';
import 'package:chifood/model/restaurants.dart';
import 'package:chifood/ui/pages/restaurantScreen.dart';
import 'package:chifood/ui/widgets/restaurantInfoContainer.dart';
import 'package:chifood/utils/priceDollor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          margin: const EdgeInsets.only(top: 120),
          builder: DotSwiperPaginationBuilder(
              color: Colors.grey,
              activeColor: Colors.black,
              space: 3.0,
              activeSize: 14.0)),
      controller: SwiperController(),
      scrollDirection: Axis.horizontal,
    );
  }
  Widget _build(BuildContext context, int index) {
    final Restaurants curRes=widget.restaurantlist[index];
    return GestureDetector(
      onTap: (){
         BlocProvider.of<RestaurantBloc>(context).add(LoadRestaurantAllInfoEvent(curRes));
         BlocProvider.of<MenuBloc>(context).add(LoadMenuEvent());
        Navigator.pushNamed(context,'/Restaurant',arguments: RestaurantArg(index,curRes));
      },
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
              RestaurantInfoCard(curRes)
            ],
          ),
        ),
      ),
    );
  }
}
