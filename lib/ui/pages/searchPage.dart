import 'dart:async';

import 'package:chifood/model/baseUser.dart';
import 'package:chifood/model/restaurants.dart';
import 'package:chifood/model/yelpReview.dart';
import 'package:flutter/material.dart';

class CustomSearchPage extends StatefulWidget {
  @override
  _CustomSearchPageState createState() => _CustomSearchPageState();
}

class _CustomSearchPageState extends State<CustomSearchPage> {
  List<String> hintList=[
    'Search by restaurant name or location','Search by location to find review','Search username'
  ];
  TabController _controller;

  final TextEditingController _searchQuery = TextEditingController();
  bool _isSearching = false;
  String _error;
  List<Restaurants> resRdesult;
  List<YelpReview> reviewResult;
  List<BaseUser> userResult;
  int default_int=0;
  Timer debounceTimer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _searchQuery.addListener((){
      if (debounceTimer != null) {
        debounceTimer.cancel();
      }
      debounceTimer = Timer(Duration(milliseconds: 500), () {
        if (this.mounted) {
          performSearch(_searchQuery.text);
        }
      });
    });

  }
  void performSearch(String query) async {
    if (query.isEmpty) {
      setState(() {
        _isSearching = false;
        _error = null;

      });
      return;
    }

    setState(() {
      _isSearching = true;
      _error = null;

    });

    //final repos = await Api.getRepositoriesWithSearchQuery(query);
    if (this._searchQuery.text == query && this.mounted) {
      setState(() {
        _isSearching = false;
//        if (repos != null) {
//          _results = repos;
//        } else {
//          _error = 'Error searching repos';
//        }
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            Row(
              children: <Widget>[
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width*0.8),
                  child: TextField(
                    controller: _searchQuery,
                    decoration: InputDecoration(
                      hintText: hintList[default_int],
                      hintStyle: TextStyle(fontSize: 14.0),
                      filled: true,
                      fillColor: Color(0xffd3d3d3),
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                      )
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: ()=>Navigator.of(context).pop(),
                  child: Text('Cancel'),
                )
              ],
            ),
            Column(
              children: <Widget>[
                TabBar(
                  controller: _controller,
                  tabs: <Widget>[
                    Tab(text: 'Restaurants',),
                    Tab(text: 'Reviews',),
                    Tab(text:'User')
                  ],
                  indicatorColor: Colors.orange,
                  labelStyle: TextStyle(color: Theme.of(context).primaryColor,fontSize: 15.0,fontWeight: FontWeight.w700),
                  unselectedLabelStyle: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.w700),
                ),
                TabBarView(
                  controller: _controller,
                  children: <Widget>[
                    Container(), Container(), Container(),
                  ],
                )
              ],
            )
          ],
        ),
    );
  }
}
