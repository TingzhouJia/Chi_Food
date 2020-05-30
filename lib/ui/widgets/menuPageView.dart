
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MenuPageView extends StatefulWidget {
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

    });
  }

  @override

  bool get wantKeepAlive => true;
}
