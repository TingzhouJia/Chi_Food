import 'package:chifood/bloc/authBloc/AuthBloc.dart';
import 'package:chifood/bloc/authBloc/AuthState.dart';
import 'package:chifood/bloc/orderBloc/orderBloc.dart';
import 'package:chifood/bloc/orderBloc/orderState.dart';
import 'package:chifood/bloc/restaurantListBloc/restaurantListBloc.dart';
import 'package:chifood/bloc/restaurantListBloc/restaurantListEvent.dart';
import 'package:chifood/bloc/restaurantListBloc/restaurantListState.dart';
import 'package:chifood/bloc/selectionBloc/selectionBloc.dart';
import 'package:chifood/bloc/selectionBloc/selectionEvent.dart';
import 'package:chifood/bloc/selectionBloc/selectionState.dart';
import 'package:chifood/model/category.dart';
import 'package:chifood/ui/widgets/CategoryListView.dart';
import 'package:chifood/ui/widgets/FilterRestrauant.dart';
import 'package:chifood/ui/widgets/backdropList.dart';
import 'package:chifood/ui/widgets/draggeableCart.dart';
import 'package:chifood/ui/widgets/dropdownController.dart';
import 'package:chifood/ui/widgets/dropdownHeader.dart';
import 'package:chifood/ui/widgets/dropdownMenu.dart';
import 'package:chifood/ui/widgets/errorWidget.dart';
import 'package:chifood/ui/widgets/filterPanel.dart';
import 'package:chifood/ui/widgets/loadingWidget.dart';
import 'package:chifood/ui/widgets/resSwipe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  double appBarAlpha = 0;
  var _scaffoldKey = new GlobalKey<ScaffoldState>();
  GlobalKey _stackKey = GlobalKey();
  List<GZXDropDownHeaderItem> selctionList=[GZXDropDownHeaderItem('Distance'),GZXDropDownHeaderItem('Cuisine'),GZXDropDownHeaderItem('Category')];
  ScrollController _scrollViewController;
  GZXDropdownMenuController _dropdownMenuController = GZXDropdownMenuController();
  SortCondition _selectCateSortCondition;
  SortCondition _selectCuisineSortCondition;
  SortCondition _selectDistanceSortCondition;
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
                List<ItemClass> cateString=selectionState.categoryList.map((each)=>ItemClass(each.id.toString(),each.name)).toList();
                List<ItemClass> cusString=selectionState.cuisineList.map((each)=>ItemClass(each.cuisine_id.toString(),each.cuisine_name)).toList();
                List<ItemClass> disString=[ItemClass('1','500'),ItemClass('2','1000'),ItemClass('3','1500')];
                return WillPopScope(
                  onWillPop: () async {
                    return false;
                  },
                  child: Scaffold(
                    key: _scaffoldKey,
                    backgroundColor: Colors.white,
                    body:SafeArea(
                      top: false,
                      bottom: false,
                      child: LayoutBuilder(
                        builder: (BuildContext context,BoxConstraints constraints){
                          return Stack(
                            key: _stackKey,
                            children: <Widget>[
                              Column(
                              children: <Widget>[
                                Container(
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
                                              child: GestureDetector(
                                                onTap: ()=>Navigator.of(context).pushNamed('/Search',arguments: SearchArg(authstate.user.entityId.toString(),
                                                authstate.user.entityType,authstate.user.lat,authstate.user.long)),
                                                child: Icon(
                                                  Icons.search,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            GestureDetector(
                                              onTap: ()=>Navigator.of(context).pushNamed('/MyPage'),
                                              child: Container(
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
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                              Positioned(
                                top: 100,
                                left: 0,
                                right: 0,
                                bottom: 0,
                                child:Container(
                                  // margin: EdgeInsets.only(top: 100),
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
                                        BlocBuilder<RestaurantListBloc,RestaurantListState>(
                                          builder: (BuildContext context,RestaurantListState resstate){
                                            if(resstate is LoadedFilterRestaurantListState ){
                                              return RestaurantList(restaurantList: resstate.restaurantList,filterChoice: selctionList,);
                                            }else if(resstate is LoadingRestaurantListState){
                                              return RestaurantList(handler:MyLoading());
                                            }else if(resstate is LoadFailRestaurantListState || selectionState is LoadSelectionFail){
                                             return  RestaurantList(handler: MyErrorWidget(),);
                                            }else{
                                              return  RestaurantList(restaurantList: selectionState.locationDetail,filterChoice: selctionList,);
                                            }
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 52,
                                left: 0,
                                right: 0,
                                child: showTab?GZXDropDownHeader(stackKey: _stackKey,controller: _dropdownMenuController,
                                  items: selctionList,
                                ):SizedBox(),
                              ),
                              GZXDropDownMenu(
                                // controller用于控制menu的显示或隐藏
                                controller: _dropdownMenuController,
                                topHeight: 130,
                                // 下拉菜单显示或隐藏动画时长
                                animationMilliseconds: 300,
                                // 下拉菜单，高度自定义，你想显示什么就显示什么，完全由你决定，你只需要在选择后调用_dropdownMenuController.hide();即可
                                menus: [
                                 GZXDropdownMenuBuilder(
                                   dropDownHeight: 40*4.0,
                                   dropDownWidget: ConditionListWidget(turnSortCondition(disString), (value){
                                      _selectDistanceSortCondition=value;
                                      selctionList[0]=value.name=='All'?GZXDropDownHeaderItem('Distance'):GZXDropDownHeaderItem(value.name);
                                      setState(() {

                                      });
                                      BlocProvider.of<RestaurantListBloc>(context).add(FilterRestaurantListEvent(
                                          entity_id: authstate.user.entityId.toString(),entity_type: authstate.user.entityType,
                                          category:_selectCateSortCondition?.id,cuisines: _selectCuisineSortCondition?.id,
                                          lat: authstate.user.lat,lon: authstate.user.long,radius: _selectDistanceSortCondition?.name
                                      ));
                                      _dropdownMenuController.hide();
                                   },_selectDistanceSortCondition)
                                 ),
                                  GZXDropdownMenuBuilder(
                                      dropDownHeight:320.0,
                                      dropDownWidget: ConditionListWidget(turnSortCondition(cusString), (value){
                                        _selectCuisineSortCondition=value;
                                        selctionList[1]=value.name=='All'?GZXDropDownHeaderItem('Cuisine'):GZXDropDownHeaderItem(value.name);

                                        setState(() {

                                        });
                                        BlocProvider.of<RestaurantListBloc>(context).add(FilterRestaurantListEvent(
                                            entity_id: authstate.user.entityId.toString(),entity_type: authstate.user.entityType,
                                            category:_selectCateSortCondition?.id,cuisines: _selectCuisineSortCondition?.id,
                                            lat: authstate.user.lat,lon: authstate.user.long,radius: _selectDistanceSortCondition?.name
                                        ));
                                        _dropdownMenuController.hide();
                                      },_selectCuisineSortCondition)
                                  ),
                                  GZXDropdownMenuBuilder(
                                      dropDownHeight: 320.0,
                                      dropDownWidget: ConditionListWidget(turnSortCondition(cateString), (value){
                                        _selectCateSortCondition=value.name=='All'?null:value;
                                        selctionList[2]=value.name=='All'?GZXDropDownHeaderItem('Category'):GZXDropDownHeaderItem(value.name);
                                        setState(() {
                                        });
                                        BlocProvider.of<RestaurantListBloc>(context).add(FilterRestaurantListEvent(
                                          entity_id: authstate.user.entityId.toString(),entity_type: authstate.user.entityType,
                                          category:_selectCateSortCondition?.id,cuisines: _selectCuisineSortCondition?.id,
                                          lat: authstate.user.lat,lon: authstate.user.long,radius: _selectDistanceSortCondition?.name
                                        ));
                                        _dropdownMenuController.hide();
                                      },_selectCateSortCondition)
                                  )
                                ],
                              ),
                              BlocBuilder<OrderBloc,OrderState>(
                                builder: (BuildContext context,OrderState orderState){
                                  if(orderState is OrderListState){
                                    return AppFloatBox(orderState.orderList.length);
                                  }else{
                                    return SizedBox(width: 1,);
                                  }
                                },
                              )
                            ],
                          );
                        },
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

turnSortCondition(List<ItemClass> items){
  List<SortCondition> _brandSortConditions = [];
  _brandSortConditions.add(SortCondition(name: 'All', isSelected: true,));
  for(ItemClass each in items){
    _brandSortConditions.add(SortCondition(name: each.name, isSelected: false,id: each.id));
  }
  return _brandSortConditions;
}

class SearchArg{
  String entity_id;
  String entity_type;
  String lat;
  String lon;
  SearchArg(this.entity_id, this.entity_type,lat,lon);

}

class ItemClass {
  String id;
  String name;

  ItemClass(this.id, this.name);

}
