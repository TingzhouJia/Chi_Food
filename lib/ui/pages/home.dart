import 'package:chifood/bloc/authBloc/AuthBloc.dart';
import 'package:chifood/bloc/authBloc/AuthState.dart';
import 'package:chifood/bloc/implementation/SelectionImplement.dart';
import 'package:chifood/bloc/orderBloc/orderBloc.dart';
import 'package:chifood/bloc/orderBloc/orderState.dart';
import 'package:chifood/bloc/selectionBloc/selectionBloc.dart';
import 'package:chifood/bloc/selectionBloc/selectionState.dart';
import 'package:chifood/config.dart';
import 'package:chifood/ui/widgets/CategoryListView.dart';
import 'package:chifood/ui/widgets/FilterRestrauant.dart';
import 'package:chifood/ui/widgets/draggeableCart.dart';
import 'package:chifood/ui/widgets/errorWidget.dart';
import 'package:chifood/ui/widgets/loadingWidget.dart';
import 'package:chifood/ui/widgets/resSwipe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomePage extends StatefulWidget {
  SelectionImplement _selectionRepo;

  HomePage(this._selectionRepo);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  double appBarAlpha = 0;
  static OverlayEntry entry;

  ScrollController _scrollViewController;

  bool showTab=false;

  @override
  void initState() {
    super.initState();
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);

    _scrollViewController.addListener((){
      if(_scrollViewController.offset>585.0&&showTab==false){
        showTab=true;
        setState(() {

        });
      }else if(_scrollViewController.offset<585.0&&showTab==true){
        showTab=false;
        setState(() {

        });
      }
    });
  }

  @override
  void dispose() {
    _scrollViewController.dispose();

    super.dispose();
    entry.remove();
  }

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<AuthenticationBloc,AuthenticationState>(
      bloc: BlocProvider.of<AuthenticationBloc>(context),
      builder:(BuildContext context,authstate){
        if(authstate is Authenticated){
          return  BlocConsumer<SelectionBloc,SelectionState>(
            listener: (context,state){
            },
            bloc: BlocProvider.of<SelectionBloc>(context),
            builder:(BuildContext context,selectionState){
              if(selectionState is BaseChoice){
                return WillPopScope(
                  onWillPop: () async {
                    return false;
                  },
                  child: Scaffold(
                    backgroundColor: Colors.white,
                    body:BlocListener<OrderBloc,OrderState>(
                      listener: (BuildContext context,OrderState state){
                        if(state is OrderListState){
                          entry?.remove();
                          entry = null;
                         entry=OverlayEntry(
                              builder: (BuildContext context){
                                return AppFloatBox(state.orderList.length);
                              }
                          );
                          Overlay.of(context).insert(entry);
                        }
                      },
                      child:  SafeArea(
                        top: false,
                        bottom: false,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 200,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30.0),
                                        bottomRight: Radius.circular(30.0))),
                                child: Container(
                                  margin: EdgeInsets.only(top: 50.0),
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Deliver Address',
                                            style: TextStyle(color: Color(0xff5c331d)),
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                authstate.user.primaryLocation.split(",")[0],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14.0),
                                              ),
                                              Icon(
                                                Icons.edit,
                                                color: Colors.grey,
                                                size: 16.0,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color(0xfff4f4f3),
                                                      offset: Offset(0.0, 2.0))
                                                ]),
                                            child: Icon(
                                              Icons.search,
                                              size: 20.0,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color(0xfff4f4f3),
                                                      offset: Offset(0.0, 2.0))
                                                ]),
                                            child: Icon(
                                              Icons.person,
                                              size: 20.0,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 100),
                              child: SingleChildScrollView(
                                controller: _scrollViewController,
                                child:Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    Container(
                                      height: 350,
                                      child: ResSwiper(selectionState.geoLocation.nearby_restaurants.toList()),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 20),
                                      color: Colors.white,
                                      child: Column(
                                        children: <Widget>[CategoryList(selectionState.categoryList)],
                                      ),
                                    ),
                                    RestaurantList(selectionState.locationDetail)
                                  ],
                                ),
                              ),
                            ),
                            showTab?Positioned(
                              top: 100,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15.0),bottomRight: Radius.circular(15.0))
                                ),
                              ),
                            ):SizedBox(),

                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }else{
                return Scaffold(
                  backgroundColor: Colors.white,
                  body: MyLoading(),
                );
              }
            } ,
          );
        }
        return Scaffold(
          body: MyErrorWidget(),
        );
      },
    );
  }


}
