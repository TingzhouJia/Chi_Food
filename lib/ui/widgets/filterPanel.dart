import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilterPanel extends StatefulWidget {
  @override
  _FilterPanelState createState() => _FilterPanelState();
}

class _FilterPanelState extends State<FilterPanel> with SingleTickerProviderStateMixin{
    TabController _tabController;
    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length: 3, vsync: this);
  }
//  Animation<RelativeRect> _getPanelAnimation(BoxConstraints constraints) {
//    final double height = constraints.biggest.height;
//    final double top = 0;
//    final double bottom = ;
//
//    return new RelativeRectTween(
//      begin: new RelativeRect.fromLTRB(0.0, top, 0.0, bottom),
//      end: new RelativeRect.fromLTRB(0.0, 0.0, 0.0, 0.0),
//    ).animate(new CurvedAnimation(parent: _controller, curve: Curves.linear));
//  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15.0),bottomRight: Radius.circular(15.0))
      ),
      child: Column(
        children: <Widget>[
          TabBar(
            controller: _tabController,
            tabs: <Widget>[

            ],
          )
        ],
      ),
    );
  }
}
