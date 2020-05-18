import 'package:chifood/ui/widgets/swipeIndicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import '../../config.dart';

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
          MediaQuery.removePadding(
            removeTop: true,
            context: context,
            child: NotificationListener(
              onNotification: (scrollNotification) {
                if (scrollNotification is ScrollUpdateNotification &&
                    scrollNotification.depth == 0) {
                  _onScroll(scrollNotification.metrics.pixels);
                }
                return true;
              },
              child:  ListView(
                children: <Widget>[
                  Container(
                    height: 262,
                    child: Stack(
//                    overflow: Overflow.visible,
                      children: <Widget>[
                        Container(
                          height: 210,
                          child: Swiper(
                            itemCount: bannerList.length,
                            autoplay: true,
                            pagination: SwiperPagination(
                              builder: SquareSwiperPagination(
                                size: 6,
                                activeSize: 6,
                                color: Colors.white.withAlpha(80),
                                activeColor: Colors.white,
                              ),
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.fromLTRB(0, 0, 14, 28),
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(

                                child:Image.asset(bannerList[index],fit: BoxFit.fill,)
                              );
                            },
                          ),
                        ),
//                        Positioned(
//                          top: 188,
//                          child: Container(
//                            decoration: BoxDecoration(
//                              borderRadius: BorderRadius.all(Radius.circular(30.0)),
//                              color: Colors.grey,
//                            ),
//                            width: MediaQuery.of(context).size.width,
//                            padding: EdgeInsets.fromLTRB(14, 0, 14, 0),
//
//                            height: 300,
//                          ),
//                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(14, 0, 14, 0),
                    margin: EdgeInsets.only(top: 10),
                    height: 1000,
                    child: Column(
                      children: <Widget>[
//                            GridNav(
//                              gridNavModel: gridNavModel,
//                            ),

                      ],
                    ),
                  ),
                ],
              )
            ),
          ),
          _appBar,

        ],
      ),

    );
//    return Scaffold(
//        body:NotificationListener(
//              onNotification: (scrollNotification) {
//                if (scrollNotification is ScrollUpdateNotification &&
//                    scrollNotification.depth == 0) {
//                  _onScroll(scrollNotification.metrics.pixels);
//                }
//                return true;
//              },
//    child:  NestedScrollView(
//        controller: _scrollViewController,
//        headerSliverBuilder:
//            (BuildContext context, bool innerBoxIsScrolled) {
//          return <Widget>[
//            SliverAppBar(
//              pinned: true,
//              floating: true,
//              title: _appBar,
//              expandedHeight: 240,
//              flexibleSpace: FlexibleSpaceBar(
//                collapseMode: CollapseMode.pin,
//                background: Container(
//                  color: Colors.transparent,
//                  child: Column(
//                    children: <Widget>[
//                      Container(
//                        height: 210,
//                        child: Swiper(
//                          itemCount: bannerList.length,
//                          autoplay: true,
//                          pagination: SwiperPagination(
//                            builder: SquareSwiperPagination(
//                              size: 6,
//                              activeSize: 6,
//                              color: Colors.white.withAlpha(80),
//                              activeColor: Colors.white,
//                            ),
//                            alignment: Alignment.bottomRight,
//                            margin: EdgeInsets.fromLTRB(0, 0, 14, 28),
//                          ),
//                          itemBuilder: (BuildContext context, int index) {
//                            return GestureDetector(
//                                child: Container(
//                                  height: 100,
//                                  width: 100,
//                                  color: Colors.red,
//                                ));
//                          },
//                        ),
//                      ),
//
//                    ],
//                  ),
//                ),
//
//              ),
//              bottom: TabBar(controller: _tabController, tabs: [
//                Tab(text: "aaa"),
//                Tab(text: "bbb"),
//                Tab(text: "ccc"),
//              ]),
//            )
//          ];
//        },
//        body: TabBarView(controller: _tabController, children: [
//          _buildListView("aaa:"),
//          _buildListView("bbb:"),
//          _buildListView("ccc:"),
//        ]))),
//        );
  }

//  Widget _buildListView(String s) {
//    return ListView.separated(
//        itemCount: 20,
//        separatorBuilder: (BuildContext context, int index) => Divider(
//              color: Colors.grey,
//              height: 1,
//            ),
//        itemBuilder: (BuildContext context, int index) {
//          return Container(
//              color: Colors.white,
//              child: ListTile(title: Text("$s第$index 个条目")));
//        });
//  }

  Widget get _appBar {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              //AppBar渐变遮罩背景
              colors: [Color(0x66000000), Colors.transparent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Container(
            padding: EdgeInsets.fromLTRB(14, 20, 14, 0),
              height: 86.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color.fromARGB(
                      (appBarAlpha * 255).toInt(), 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                      color: appBarAlpha == 1.0
                          ? Colors.black12
                          : Colors.transparent,
                      offset: Offset(2, 3),
                      blurRadius: 6,
                      spreadRadius: 0.6,
                    ),
                  ]
              ),
            child: Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.location_on),
                  Container(
                    color: Colors.white,
                    child:  Text('aaaa'),
                  ),
                  Icon(Icons.person)
                ],
              ),
            ),
             ),
        ),
        Container(
            height: appBarAlpha > 0.2 ? 0.5 : 0,
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 0.5)]))
      ],
    );
  }
}
