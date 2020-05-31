import 'package:chifood/model/menuItem.dart';
import 'package:chifood/ui/widgets/menuPageView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuTab extends StatefulWidget {
   MenuTab({this.TabTitle,this.menuItemMap});
   List<String> TabTitle=['a','b,'];
   List<List<MenuItem>> menuItemMap;


  @override
  _MenuTabState createState() => _MenuTabState();
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
      height: 1000,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TabBar(
            labelPadding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 5.0),
            controller: _tabController,
            isScrollable: true,
            indicatorColor: Colors.transparent,
            labelStyle: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold,color: Colors.black),
            unselectedLabelStyle: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w600,color: Colors.grey),
            tabs: widget.TabTitle.map((String each){
              return Tab(text: each);
            }).toList(),
          ),

          Expanded(
            child: PageView.builder(itemBuilder: (BuildContext context,int index){
              final List<MenuItem> curPage=widget.menuItemMap[index];
//            return MenuPageView(curPage);
            return ListView.builder(itemBuilder: (context,index){
              return Text(index.toString());
            },itemCount: 50,shrinkWrap: true,);
            },
              onPageChanged: (int index){
                if(isPageChanged){
                  onPageChange(index);
                }
              },itemCount: widget.TabTitle.length,pageSnapping: true,),
          )

        ],
      ),
    );
  }
}
