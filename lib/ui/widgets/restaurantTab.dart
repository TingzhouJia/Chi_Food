import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RestaurantTab extends StatefulWidget {

  List<String> tabTitle;
  PageController pageController;
  TabController tabController;
  @override
  _RestaurantTabState createState() => _RestaurantTabState();

  RestaurantTab(this.tabTitle,this.pageController,this.tabController);
}

class _RestaurantTabState extends State<RestaurantTab>  {

  @override
  void initState() {

    super.initState();


  }
  @override
  Widget build(BuildContext context) {
    return  TabBar(
      labelPadding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 5.0),
      controller: widget.tabController,
      isScrollable: true,
      indicatorColor: Colors.transparent,
      labelStyle: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold,color: Colors.black),
      unselectedLabelStyle: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w600,color: Colors.grey),
      tabs: widget.tabTitle.map((String each){
        return Tab(text: each);
      }).toList(),
    );
  }
}

