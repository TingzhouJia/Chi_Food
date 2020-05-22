import 'package:chifood/ui/pages/splash.dart';
import 'package:chifood/ui/widgets/swipeIndicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import '../../config.dart';
import 'orderConfirmation.dart';

class HomePage extends StatefulWidget {
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

  void _onScroll(offset) {
    double alpha = offset / APPBAR_SCROLL_OFFSET;
    if (alpha < 0) {
      alpha = 0;
    } else if (alpha > 1) {
      alpha = 1;
    }
    setState(() {
      appBarAlpha = alpha;
    });
  }

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
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                  color: Theme
                      .of(context)
                      .primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0))
              ),
              child: Container(
                margin: EdgeInsets.only(top: 50.0),
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text('Deliver Address', style: TextStyle(color: Color(
                            0xff5c331d)),),
                        Row(
                          children: <Widget>[
                            Text('122 Sydenham Street', style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17.0),),
                            Icon(Icons.edit, color: Colors.grey,)
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
                                BoxShadow(color: Color(0xfff4f4f3),
                                    offset: Offset(0.0, 2.0))
                              ]
                          ),
                          child: Icon(Icons.search, size: 20.0,),
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(color: Color(0xfff4f4f3),
                                    offset: Offset(0.0, 2.0))
                              ]
                          ),
                          child: Icon(Icons.person, size: 20.0,),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 150),
            child: Swiper(
              itemCount: 4,
              itemBuilder:_build,
              pagination: SwiperPagination(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                builder: DotSwiperPaginationBuilder(

                  color: Colors.grey,
                  activeColor: Colors.black,
                  space: 3.0,
                  activeSize: 14.0
                )
              ),
              controller: SwiperController(),
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),

    );
  }
  Widget _build(BuildContext,int index){
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        image: DecorationImage(image: AssetImage(bannerList[index]),fit: BoxFit.fill)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 100,
            width: 250,
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius:BorderRadius.all(Radius.circular(10.0)) ,
              color: Colors.white
            ),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black54))
                  ),
                  child: Column(
                    children: <Widget>[
                      Text('Tim Horton',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0),),
                      Text('110 Princess Street',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.grey),)
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.star,color: Colors.orange,),
                        Text('4.9')
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.star,color: Colors.orange,),
                        Text('4.9')
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('Votes:',style: TextStyle(color: Colors.black),),
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
      ) ,
    );
  }
}
