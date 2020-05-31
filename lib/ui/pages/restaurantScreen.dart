import 'dart:async';

import 'package:chifood/bloc/mealBloc/mealBloc.dart';
import 'package:chifood/bloc/mealBloc/menuState.dart';
import 'package:chifood/bloc/restaurantBloc/restaurantBloc.dart';
import 'package:chifood/bloc/restaurantBloc/restaurantState.dart';
import 'package:chifood/config.dart';
import 'package:chifood/model/restaurants.dart';
import 'package:chifood/ui/widgets/menuTab.dart';
import 'package:chifood/ui/widgets/restaurantPageHeader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RestaurantScreen extends StatefulWidget {
  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  ScrollController _controller;
  bool dark = false;
  Set<Marker> _markers = {};
  Completer<GoogleMapController> _mapController = Completer();

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
          backgroundColor: Colors.white,
          body:
          CustomScrollView(
            controller: _controller,
            slivers: <Widget>[
              SliverPersistentHeader(
                pinned: true,
                floating: false,
                delegate: RestaurantPageHeader(args),
              ),
             SliverList(
               delegate: SliverChildListDelegate([
                 Container(
                   padding: EdgeInsets.all(20.0),
                   decoration: BoxDecoration(
                       border:
                       Border(bottom: BorderSide(color: Color(0xfff4f4f3)))),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Text(
                         'Restaurant Location',
                         style: TextStyle(
                             fontWeight: FontWeight.bold, fontSize: 17.0),
                       ),
                       SizedBox(
                         height: 10,
                       ),
                       Container(
                         width: MediaQuery.of(context).size.width * 0.9,
                         height: 150,
                         decoration: BoxDecoration(border: Border.all()),
                         child: GoogleMap(
                           initialCameraPosition: CameraPosition(
                             target: LatLng(
                                 double.parse(args.restaurants.location.latitude),
                                 double.parse(
                                     args.restaurants.location.longitude)),
                             zoom: 14.0000,
                           ),
                           mapType: MapType.normal,
                           markers: _markers
                             ..add(Marker(
                                 markerId:
                                 MarkerId('restloc${args.restaurants.id}'),
                                 position: LatLng(
                                     double.parse(
                                         args.restaurants.location.latitude),
                                     double.parse(
                                         args.restaurants.location.longitude)))),
                           compassEnabled: false,
                           myLocationButtonEnabled: false,
                           onMapCreated: (GoogleMapController controller) {
                             _mapController.complete(controller);
                           },
                         ),
                       )
                     ],
                   ),
                 ),

               ])
             ),
              SliverToBoxAdapter(
                child: BlocBuilder<MenuBloc, MenuState>(
                  bloc: BlocProvider.of<MenuBloc>(context),
                  builder: (BuildContext context, MenuState state) {
                    if (state is LoadMenuState) {

                      return MenuTab(
                          menuItemMap: state.menuList,
                          TabTitle: state.menuCategory);
                    } else if (state is LoadingMenuState) {
                      return Container(
                        padding: EdgeInsets.only(top: 30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SpinKitFadingCircle(
                              itemBuilder: (BuildContext context, int index) {
                                return DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                  ),
                                );
                              },
                            ),
                            Text('Loading Hard')
                          ],
                        ),
                      );
                    } else {
                      return Container(
                        child: Column(
                          children: <Widget>[
                            Image.asset('${asset}404-1.jpg',fit: BoxFit.cover,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 15.0),
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              ),
                              child: Text('Reload Menu',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                            ),
                            SizedBox(height: 40,)
                          ],
                        ),
                      );
                    }
                  },
                ),
              )
            ],
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
