import 'package:chifood/config.dart';
import 'package:chifood/model/restaurants.dart';
import 'package:chifood/ui/widgets/restaurantPageHeader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RestaurantScreen extends StatefulWidget {
  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  ScrollController _controller;
  bool dark=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=new ScrollController();
    _controller.addListener((){
      if(_controller.offset>220){
        dark=true;
        setState(() {

        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    RestaurantArg args=ModalRoute.of(context).settings.arguments;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: dark?SystemUiOverlayStyle.dark:SystemUiOverlayStyle.light,
      child: Scaffold(
        body: CustomScrollView(
          controller: _controller,
          slivers: <Widget>[
            SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: RestaurantPageHeader(args),
            ),

            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Container(height: 30,child: Text(index.toString()),);
                },
                childCount: 30,
              ),
            )

          ],

        ),
      ),
    );
  }
}

class RestaurantArg{
  final int id;
  final Restaurants restaurants;
  RestaurantArg(this.id,this.restaurants);

}
