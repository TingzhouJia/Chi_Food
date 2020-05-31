

import 'package:chifood/ui/pages/restaurantScreen.dart';
import 'package:chifood/ui/widgets/restaurantInfoContainer.dart';
import 'package:chifood/utils/priceDollor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config.dart';

class CUS extends StatefulWidget {
  RestaurantArg index;

  CUS(this.index);

  @override
  _CUSState createState() => _CUSState();
}

class _CUSState extends State<CUS> with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController=TabController(length: 2,vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            expandedHeight: 300,
            pinned: true,
            leading: SizedBox(width: 1,),
            title: Text('a'),
            flexibleSpace: Stack(
              children: <Widget>[
                Image.asset(
                  bannerList[widget.index.id],
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 50,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap:(){
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color:
                              Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 20.0,
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Colors.white
                                    ,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.file_upload,
                                size: 20.0,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.favorite,
                                size: 20.0,
                                color: Colors.redAccent,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    bottom: 10,
                    left: 50,
                    right: 50,
                    child: RestaurantInfoCard(widget.index.restaurants)),
              ],
            ),
          ),
          SliverPersistentHeader(    // 可以吸顶的TabBar
            pinned: true,
            delegate: StickyTabBarDelegate(
              child: TabBar(
                labelColor: Colors.black,
                controller:tabController,
                tabs: <Widget>[
                  Tab(text: 'Home'),
                  Tab(text: 'Profile'),
                ],
              ),
            ),
          ),
          SliverFillRemaining(        // 剩余补充内容TabBarView
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                Center(child: Text('Content of Home')),
                Center(child: Text('Content of Profile')),
              ],
            ),
          ),
        ],
      )

      ,
    );
  }
}
class StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar child;

  StickyTabBarDelegate({@required this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return this.child;
  }

  @override
  double get maxExtent => this.child.preferredSize.height;

  @override
  double get minExtent => this.child.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
