import 'package:chifood/model/menuItem.dart';
import 'package:chifood/model/restaurants.dart';
import 'package:chifood/ui/widgets/menuPageView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuTab extends StatefulWidget {
   MenuTab({this.menuItemMap,this.tabController,this.pageController,this.curRestaurant});
   TabController tabController;
   Restaurants curRestaurant;
   List<List<MenuItem>> menuItemMap;
  PageController pageController;
//  List<List<MenuItem>> menuItemMap;
//
//  MenuTab({this.menuItemMap});

  @override
  _MenuTabState createState() => _MenuTabState();
}

class _MenuTabState extends State<MenuTab> {



  var curPage=0;
  var isPageChanged=true;
  void onPageChange(int index,{PageController p,TabController t}) async{
    if(p!=null){
      isPageChanged=false;
      await p.animateToPage(index, duration: Duration(microseconds: 500), curve: Curves.easeIn);
      isPageChanged=true;
      widget.tabController.animateTo(index);
    }

  }
  @override
  void dispose() {
    super.dispose();

  }
  @override
  void initState()  {

    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: widget.pageController,
      itemBuilder: (BuildContext context,int index){
      final List<MenuItem> curPage=widget.menuItemMap[index];
      return MenuPageView(curPage,widget.curRestaurant);
    },
      onPageChanged: (int index){
        if(isPageChanged){
          onPageChange(index,p: widget.pageController);
        }
      },itemCount: widget.menuItemMap.length,pageSnapping: true,);
  }
}
