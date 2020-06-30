import 'dart:async';

import 'package:chifood/bloc/mealBloc/mealBloc.dart';
import 'package:chifood/bloc/mealBloc/menuEvent.dart';
import 'package:chifood/bloc/restaurantBloc/restaurantBloc.dart';
import 'package:chifood/bloc/restaurantBloc/restaurantEvent.dart';
import 'package:chifood/model/baseUser.dart';
import 'package:chifood/model/restaurants.dart';
import 'package:chifood/model/yelpBusiness.dart';
import 'package:chifood/model/yelpReview.dart';
import 'package:chifood/service/apiService.dart';
import 'package:chifood/ui/pages/home.dart';
import 'package:chifood/ui/pages/restaurantScreen.dart';
import 'package:chifood/ui/widgets/getRating.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchPage extends StatefulWidget {
  Dio client;
  Dio yelpClient;
  CustomSearchPage(this.client,this.yelpClient);

  @override
  _CustomSearchPageState createState() => _CustomSearchPageState();
}

class _CustomSearchPageState extends State<CustomSearchPage> with SingleTickerProviderStateMixin {
  List<String> hintList=[
    'Search by restaurant name or location','Search by location to find review','Search username'
  ];
  String entity_id;
  String entity_type;
  String lat;
  String long;
  TabController _controller;
  FocusNode node;
  final TextEditingController _searchQuery = TextEditingController();
  bool _isSearching = false;
  String _error;
  List<Restaurants> resRdesult;
  List<YelpBusiness> reviewResult;
  List<BaseUser> userResult;
  int default_int=0;
  Timer debounceTimer;
  ScrollController _scrollController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    node=new FocusNode();

    _controller=new TabController(length: 3, vsync: this);
    _controller.addListener((){
      if(_controller.indexIsChanging){
        default_int=_controller.index;
        setState(() {

        });
      }
    });
    _scrollController=new ScrollController();
    _scrollController.addListener((){
      if(_scrollController.offset>1.0&&node.hasFocus){
        node.unfocus();
      }
    });
    _searchQuery.addListener((){
      if (debounceTimer != null) {
        debounceTimer.cancel();
      }
      debounceTimer = Timer(Duration(milliseconds: 1500), () {
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
    List<Restaurants> repos;
    List<YelpBusiness> reviewrepo;
    if(default_int==0){
      repos = await searchRestaurants(widget.client, query,entity_id,entity_type);
    }else{
      reviewrepo=await searchYelpBusiness(widget.yelpClient,term: query,latitude: lat,longitude: long );
    }
    

    if (this._searchQuery.text == query && this.mounted) {
      setState(() {
        _isSearching = false;
        if(default_int==0){
          if (repos != null) {
            repos.removeWhere((each)=>each.name==null);
            resRdesult =repos ;
          }
        }else{
          reviewResult=reviewrepo;
        }
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    SearchArg a=ModalRoute.of(context).settings.arguments;
    setState(() {
      entity_id=a.entity_id;
      entity_type=a.entity_type;
    });
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
          body:SafeArea(
            top: true,
            bottom: false,
            child: Stack(
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width*0.75),
                            child: TextField(
                              controller: _searchQuery,
                              focusNode: node,
                              decoration: InputDecoration(
                                  hintText: hintList[default_int],
                                  hintStyle: TextStyle(fontSize: 14.0,color: Colors.black),
                                  contentPadding: EdgeInsets.symmetric(vertical:0.0,horizontal: 10.0),
                                  filled: true,
                                  focusColor: Colors.white,
                                  suffixIcon: _searchQuery.text.length>0?IconButton(
                                    onPressed: ()=>WidgetsBinding.instance.addPostFrameCallback( (_) => _searchQuery.clear()),
                                    icon: Icon(Icons.cancel,color: Theme.of(context).primaryColor,),
                                  ):SizedBox(),
                                  fillColor:node.hasFocus?Colors.white: Color(0xffd3d3d3).withOpacity(0.4),
                                  border: OutlineInputBorder(
                                    gapPadding: 0.0,
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(20.0),
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
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 10,),
                          TabBar(
                            controller: _controller,
                            tabs: <Widget>[
                              Tab(child:Row(
                                children: <Widget>[
                                  Text('Restaurants'), Icon(Icons.apps)
                                ],
                              ) ,),
                              Tab(child:Row(
                                children: <Widget>[
                                  Text('Reviews'), Icon(Icons.message)
                                ],
                              ) ,),
                              Tab(child:Row(
                                children: <Widget>[
                                  Text('Users'), Icon(Icons.person_outline)
                                ],
                              ) ,),
                            ],
                            indicatorColor: Colors.orange,
                            isScrollable: true,
                            labelColor:  Colors.orange,
                            labelStyle: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w600),
                            unselectedLabelStyle: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500),
                            unselectedLabelColor: Colors.black,
                          ),
                          Expanded(
                            child: TabBarView(
                              controller: _controller,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(15.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.symmetric(horizontal: 35.0,vertical: 7.0),
                                            child: Text('Check nearby restaurants',textAlign: TextAlign.center,),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                boxShadow: [
                                                  BoxShadow(

                                                      color: Color(0xffd3d3d3).withOpacity(0.3),offset: Offset(1.6,1.7),spreadRadius: 2.0,blurRadius: 4.0
                                                  ),BoxShadow(
                                                      color: Color(0xffd3d3d3).withOpacity(0.3),offset: Offset(-1.6,-1.7),spreadRadius: 2.0,blurRadius: 4.0
                                                  )
                                                ]
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 20,),
                                      Text('Popular Search',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16.0),textAlign: TextAlign.left,),
                                      SizedBox(height: 10,),
                                      Column(
                                        children: <Widget>[
                                          Container(
                                            padding:EdgeInsets.symmetric(vertical: 10.0),
                                            decoration: BoxDecoration(
                                              border: Border(top: BorderSide(color: Colors.grey.withOpacity(0.3)),bottom: BorderSide(color: Colors.grey.withOpacity(0.3)))
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Text('Chinese Cuisine'),

                                                Text('Japan Cuisine')
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding:EdgeInsets.symmetric(vertical: 10.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Text('Breakfast'),

                                                Text('Bakery')
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding:EdgeInsets.symmetric(vertical: 10.0),
                                            decoration: BoxDecoration(
                                                border: Border(top: BorderSide(color: Colors.grey.withOpacity(0.3)),bottom: BorderSide(color: Colors.grey.withOpacity(0.3)))
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Text('BBQ'),

                                                Text('Middle East Cuisine')
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ), Container(), Container(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                !_isSearching&&_searchQuery.text.length!=0?Positioned(
                  top: 70,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: default_int==0?restaurantPart():reviewList(),
                ):SizedBox()

              ],
            ),
          ),
      ),
    );
  }
  Widget restaurantPart(){
    return Container(
      color: Colors.white,
      child:resRdesult==null?Container(
        child: Text('No result found'),
      ): ListView.builder(itemBuilder: (BuildContext context,int index){
        Restaurants res=resRdesult[index];
        return GestureDetector(
          onTap: (){
            BlocProvider.of<RestaurantBloc>(context).add(LoadRestaurantAllInfoEvent(res));
            BlocProvider.of<MenuBloc>(context).add(LoadMenuEvent());
            Navigator.pushNamed(context,'/Restaurant',arguments: RestaurantArg(index,res));
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 16.0),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black.withOpacity(0.2)))
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.store),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(res.name),
                    Row(
                      children: <Widget>[
                        StarRating(rating: double.parse(res.user_rating.aggregate_rating),),
                        SizedBox(width: 5,),
                        Text(res.user_rating.votes)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(res.cuisines.split(', ')[0]),
                        Container(
                          width: 1,
                          height: 10,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          color: Colors.grey,
                        ),

                        ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 230),
                          child: Text(res.location.address,overflow: TextOverflow.ellipsis,),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },itemCount: resRdesult?.length,controller: _scrollController,),
    );
  }
  Widget reviewList(){
    return Container(
      color: Colors.white,
      child:reviewResult==null?Container(
        child: Text('No result found'),
      ): ListView.builder(itemBuilder: (BuildContext context,int index){
        YelpBusiness curBusiness=reviewResult[index];
        return Container(
          padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 16.0),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black.withOpacity(0.2)))
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.message),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(curBusiness.name),
                  Row(
                    children: <Widget>[
                      StarRating(rating: double.parse(curBusiness.rating.toString()),),
                      SizedBox(width: 5,),
                      Text(curBusiness.price)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(curBusiness.alias),
                      Container(
                        width: 1,
                        height: 10,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        color: Colors.grey,
                      ),

                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 230),
                        child: Text(curBusiness.location.address1+', '+curBusiness.location.city,overflow: TextOverflow.ellipsis,),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        );
      },itemCount: resRdesult?.length,controller: _scrollController,),
    ) ;
  }
}
