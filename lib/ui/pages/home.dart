import 'package:chifood/bloc/authBloc/AuthBloc.dart';
import 'package:chifood/bloc/authBloc/AuthState.dart';
import 'package:chifood/bloc/authBloc/AuthState.dart';
import 'package:chifood/bloc/implementation/SelectionImplement.dart';
import 'package:chifood/bloc/selectionBloc/selectionBloc.dart';
import 'package:chifood/bloc/selectionBloc/selectionEvent.dart';
import 'package:chifood/bloc/selectionBloc/selectionState.dart';
import 'package:chifood/ui/pages/splash.dart';
import 'package:chifood/ui/widgets/CategoryListView.dart';
import 'package:chifood/ui/widgets/FilterRestrauant.dart';
import 'package:chifood/ui/widgets/draggeableCart.dart';
import 'package:chifood/ui/widgets/swipeIndicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  SelectionImplement _selectionRepo;

  HomePage(this._selectionRepo);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  double appBarAlpha = 0;
  final bannerList = [
    'assets/img/banner1.jpeg',
    'assets/img/banner2.jpeg',
    'assets/img/banner3.jpeg',
    'assets/img/banner4.jpeg',
  ];

  ScrollController _scrollViewController;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollViewController.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocBuilder<SelectionBloc,SelectionState>(
          builder:(context,state){
            return SafeArea(
              top: false,
              bottom: false,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0))),
                      child: Container(
                        margin: EdgeInsets.only(top: 50.0),
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Deliver Address',
                                  style: TextStyle(color: Color(0xff5c331d)),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '122 Sydenham Street',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0),
                                    ),
                                    Icon(
                                      Icons.edit,
                                      color: Colors.grey,
                                      size: 16.0,
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0xfff4f4f3),
                                            offset: Offset(0.0, 2.0))
                                      ]),
                                  child: Icon(
                                    Icons.search,
                                    size: 20.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0xfff4f4f3),
                                            offset: Offset(0.0, 2.0))
                                      ]),
                                  child: Icon(
                                    Icons.person,
                                    size: 20.0,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                            height: 350,
                            child: Swiper(
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
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            color: Colors.white,
                            child: Column(
                              children: <Widget>[CategoryList()],
                            ),
                          ),
                          RestaurantList()
                        ],
                      ),
                    ),
                  ),
                  AppFloatBox()
                ],
              ),
            );
          } ,
        ),
      ),
    );
  }

  Widget _build(BuildContext, int index) {
    return Container(
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
                            'Tim Horton',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17.0),
                          ),
                          Text(
                            '110 Princess Street',
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
                        Text('4.9')
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Votes:',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text('205')
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('Average spent:'),
                        Text('\$\$\$')
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
