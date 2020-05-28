import 'package:chifood/config.dart';
import 'package:chifood/ui/widgets/restaurantPageHeader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RestaurantScreen extends StatefulWidget {
  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {

  @override
  Widget build(BuildContext context) {
    RestaurantArg args=ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: CustomScrollView(
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
    );
  }
}

class RestaurantArg{
  final int id;

  RestaurantArg(this.id);

}
