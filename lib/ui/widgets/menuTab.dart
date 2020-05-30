import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuTab extends StatefulWidget {
  List<Tabclass> TabTitle;

  MenuTab(this.TabTitle);

  @override
  _MenuTabState createState() => _MenuTabState();
}
class Tabclass {
  String strCategory;
}
class _MenuTabState extends State<MenuTab> with SingleTickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController=PageController(initialPage: 0);
  var curPage=0;
  var isPageChanged=true;
  void onPageChange(int index,{PageController p,TabController t}) async{
    if(p!=null){
      isPageChanged=false;
      await p.animateToPage(index, duration: Duration(microseconds: 500), curve: Curves.easeIn);
      isPageChanged=true;
      _tabController.animateTo(index);
    }

  }
  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
  @override
  void initState()  {

    super.initState();
    _tabController=TabController(
      length:widget.TabTitle.length,
      vsync: this
    );
    _tabController.addListener((){
      if(_tabController.indexIsChanging){
          onPageChange(_tabController.index,p: _pageController);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
                TabBar(
                  labelPadding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 5.0),
                  controller: _tabController,
                  isScrollable: true,
                  indicatorColor: Colors.transparent,
                  labelStyle: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold,color: Colors.black),
                  unselectedLabelStyle: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w600,color: Colors.grey),
                  tabs: widget.TabTitle.map((Tabclass each){
                    return Tab(text: each.strCategory);
                  }).toList(),
                ),
                Expanded(
                  child: PageView.builder(itemBuilder: (BuildContext context,int index){

                  },
                  onPageChanged: (int index){
                        if(isPageChanged){
                          onPageChange(index);
                        }
                  },),
                )
        ],
      ),
    );
  }
}
