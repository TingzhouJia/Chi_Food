import 'dart:async';

import 'package:chifood/bloc/mealBloc/menuState.dart';
import 'package:chifood/bloc/orderBloc/orderBloc.dart';
import 'package:chifood/bloc/orderBloc/orderState.dart';
import 'package:chifood/ui/pages/restaurantScreen.dart';
import 'package:chifood/ui/widgets/draggeableCart.dart';
import 'package:chifood/ui/widgets/restaurantPageHeader.dart';
import 'package:chifood/ui/widgets/restaurantTab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'menuTab.dart';

class RestaurantScrollView extends StatefulWidget {
  ScrollController controller;
  RestaurantArg arg;
  LoadMenuState state;
  RestaurantScrollView({this.controller, this.arg,this.state});

  @override
  _RestaurantScrollViewState createState() => _RestaurantScrollViewState();
}

class _RestaurantScrollViewState extends State<RestaurantScrollView>  with SingleTickerProviderStateMixin{
  Set<Marker> _markers = {};
  Completer<GoogleMapController> _mapController = Completer();
  TabController tabController;
  PageController pageController=PageController(initialPage: 0);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this, length: widget.state.menuCategory.length);
    tabController.addListener((){
      if(tabController.indexIsChanging){
        pageController.animateToPage(tabController.index, duration: Duration(milliseconds: 550), curve: Curves.easeIn);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    final args=widget.arg;
    return NestedScrollView(
          controller: widget.controller,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
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
                          border: Border(bottom: BorderSide(color: Color(0xfff4f4f3)))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Restaurant Location',
                            style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
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
                                    double.parse(args.restaurants.location.longitude)),
                                zoom: 14.0000,
                              ),
                              mapType: MapType.normal,
                              markers: _markers
                                ..add(Marker(
                                    markerId: MarkerId('restloc${args.restaurants.id}'),
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
                  ])),

              SliverToBoxAdapter(
                child:
                RestaurantTab(
                  tabTitle: widget.state.menuCategory,
                  pageController: pageController,
                  tabController: tabController,
                ),
//    BlocBuilder<MenuBloc, MenuState>(
//    bloc: BlocProvider.of<MenuBloc>(context),
//    builder: (BuildContext context, MenuState state) {
//      if(state is LoadMenuState){
//        return RestaurantTab(tabTitle: state.menuCategory,);
//      }else{
//        return MyErrorWidget();
//      }
//    })
              )
            ];
          },
          body: MenuTab(
            menuItemMap: widget.state.menuList,
            tabController: tabController,
            pageController: pageController,
            curRestaurant: args.restaurants,
          )
//      BlocBuilder<MenuBloc, MenuState>(
//    bloc: BlocProvider.of<MenuBloc>(context),
//    builder: (BuildContext context, MenuState state) {
//      if(state is LoadMenuState){
//        return MenuTab(menuItemMap: state.menuList);
//      }else{
//        return MyErrorWidget();
//      }
//    }),
      );

  }
}



