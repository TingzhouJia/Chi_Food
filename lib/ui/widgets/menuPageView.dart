
import 'package:chifood/model/menuItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuPageView extends StatefulWidget {
  const MenuPageView(this.itemList);
  final List<MenuItem> itemList;



  @override
  _MenuPageViewState createState() => _MenuPageViewState();
}

class _MenuPageViewState extends State<MenuPageView> with AutomaticKeepAliveClientMixin{

  @override
  void initState(){
    super.initState();
  }


  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext context,int index){
      final MenuItem item=widget.itemList[index];
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
              child: Text(item.strMeal),
        );
    });
  }

  @override

  bool get wantKeepAlive => true;
}
