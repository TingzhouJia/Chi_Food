import 'package:chifood/bloc/authBloc/AuthBloc.dart';
import 'package:chifood/bloc/authBloc/AuthState.dart';
import 'package:chifood/bloc/restaurantListBloc/restaurantListBloc.dart';
import 'package:chifood/bloc/restaurantListBloc/restaurantListEvent.dart';
import 'package:chifood/bloc/restaurantListBloc/restaurantListState.dart';
import 'package:chifood/bloc/selectionBloc/selectionBloc.dart';
import 'package:chifood/bloc/selectionBloc/selectionEvent.dart';
import 'package:chifood/bloc/selectionBloc/selectionState.dart';
import 'package:chifood/ui/widgets/FilterRestrauant.dart';
import 'package:chifood/ui/widgets/backdropList.dart';
import 'package:chifood/ui/widgets/dropdownController.dart';
import 'package:chifood/ui/widgets/dropdownHeader.dart';
import 'package:chifood/ui/widgets/dropdownMenu.dart';
import 'package:chifood/ui/widgets/errorWidget.dart';
import 'package:chifood/ui/widgets/loadingWidget.dart';
import 'package:chifood/ui/widgets/restaurantContentList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home.dart';

class RestaurantFilterPage extends StatefulWidget {
  @override
  _RestaurantFilterPageState createState() => _RestaurantFilterPageState();
}

class _RestaurantFilterPageState extends State<RestaurantFilterPage> {
  GlobalKey _stackKey = GlobalKey();
  GZXDropdownMenuController _dropdownMenuController =
      GZXDropdownMenuController();
  List<GZXDropDownHeaderItem> selctionList = [
    GZXDropDownHeaderItem('Distance'),
    GZXDropDownHeaderItem('Cuisine'),
    GZXDropDownHeaderItem('Category')
  ];
  SortCondition _selectCateSortCondition;
  SortCondition _selectCuisineSortCondition;
  SortCondition _selectDistanceSortCondition;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: BlocBuilder<AuthenticationBloc,AuthenticationState>(
          builder: (BuildContext context,AuthenticationState authstate){
            if(authstate is Authenticated){
              return BlocBuilder<SelectionBloc, SelectionState>(
                builder: (BuildContext context, SelectionState selectionState) {
                  if (selectionState is BaseChoice) {
                    List<ItemClass> cateString = selectionState.categoryList
                        .map((each) => ItemClass(each.id.toString(), each.name))
                        .toList();
                    List<ItemClass> cusString = selectionState.cuisineList
                        .map((each) =>
                        ItemClass(each.cuisine_id.toString(), each.cuisine_name))
                        .toList();
                    List<ItemClass> disString = [
                      ItemClass('1', '500'),
                      ItemClass('2', '1000'),
                      ItemClass('3', '1500')
                    ];
                    return Stack(
                      key: _stackKey,
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: GestureDetector(
                            onTap: ()=>Navigator.of(context).pushNamed('/Search',arguments: SearchArg(authstate.user.entityId.toString(),
                                authstate.user.entityType,authstate.user.lat,authstate.user.long)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    height: 40,

                                    padding: EdgeInsets.only(left: 10,right: 20),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                        color: Colors.grey.withOpacity(0.4),
                                        border: Border.all(color: Color(0xffe5e5e5))
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.search),
                                        Text('Search Restaurants Nearby')
                                      ],
                                    ),
                                  ),
                                  GestureDetector(child: Text('Cancel'),onTap: ()=>Navigator.of(context).pop(),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 0,
                          right: 0,
                          child: GZXDropDownHeader(stackKey: _stackKey,controller: _dropdownMenuController,
                            color: Colors.white,
                            items: selctionList,
                          ),
                        ),
                        Positioned(
                          top: 100,
                          left: 10,
                          right: 10,
                          bottom: 0,
                          child: SingleChildScrollView(
                            child:
                            BlocBuilder<RestaurantListBloc, RestaurantListState>(
                              builder: (BuildContext context,
                                  RestaurantListState resstate) {
                                if (resstate is LoadedFilterRestaurantListState) {
                                  return RestaurantContentList(
                                    resstate.restaurantList,
                                  );
                                } else if (resstate is LoadingRestaurantListState) {
                                  return MyLoading();
                                } else if (resstate is LoadFailRestaurantListState ||
                                    selectionState is LoadSelectionFail) {
                                  return MyErrorWidget();
                                } else {
                                  return RestaurantContentList(
                                    selectionState.locationDetail,
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                        BlocBuilder<AuthenticationBloc, AuthenticationState>(
                          builder:
                              (BuildContext context, AuthenticationState authstate) {
                            if (authstate is Authenticated) {
                              return GZXDropDownMenu(
                                topHeight: 100,
                                // controller用于控制menu的显示或隐藏
                                controller: _dropdownMenuController,
                                // 下拉菜单显示或隐藏动画时长
                                animationMilliseconds: 300,
                                // 下拉后遮罩颜色
//          maskColor: Theme.of(context).primaryColor.withOpacity(0.5),
//          maskColor: Colors.red.withOpacity(0.5),
                                // 下拉菜单，高度自定义，你想显示什么就显示什么，完全由你决定，你只需要在选择后调用_dropdownMenuController.hide();即可
                                menus: [
                                  GZXDropdownMenuBuilder(
                                      dropDownHeight: 40 * 4.0,
                                      dropDownWidget: ConditionListWidget(
                                          turnSortCondition(disString), (value) {
                                        _selectDistanceSortCondition = value;
                                        selctionList[0] = value.name == 'All'
                                            ? GZXDropDownHeaderItem('Distance')
                                            : GZXDropDownHeaderItem(value.name);
                                        setState(() {});
                                        BlocProvider.of<RestaurantListBloc>(context)
                                            .add(FilterRestaurantListEvent(
                                            entity_id: authstate.user.entityId
                                                .toString(),
                                            entity_type:
                                            authstate.user.entityType,
                                            category:
                                            _selectCateSortCondition?.id,
                                            cuisines:
                                            _selectCuisineSortCondition?.id,
                                            lat: authstate.user.lat,
                                            lon: authstate.user.long,
                                            radius: _selectDistanceSortCondition
                                                ?.name));
                                        _dropdownMenuController.hide();
                                      }, _selectDistanceSortCondition)),
                                  GZXDropdownMenuBuilder(
                                      dropDownHeight: 320.0,
                                      dropDownWidget: ConditionListWidget(
                                          turnSortCondition(cusString), (value) {
                                        _selectCuisineSortCondition = value;
                                        selctionList[1] = value.name == 'All'
                                            ? GZXDropDownHeaderItem('Cuisine')
                                            : GZXDropDownHeaderItem(value.name);

                                        setState(() {});
                                        BlocProvider.of<RestaurantListBloc>(context)
                                            .add(FilterRestaurantListEvent(
                                            entity_id: authstate.user.entityId
                                                .toString(),
                                            entity_type:
                                            authstate.user.entityType,
                                            category:
                                            _selectCateSortCondition?.id,
                                            cuisines:
                                            _selectCuisineSortCondition?.id,
                                            lat: authstate.user.lat,
                                            lon: authstate.user.long,
                                            radius: _selectDistanceSortCondition
                                                ?.name));
                                        _dropdownMenuController.hide();
                                      }, _selectCuisineSortCondition)),
                                  GZXDropdownMenuBuilder(
                                      dropDownHeight: 320.0,
                                      dropDownWidget: ConditionListWidget(
                                          turnSortCondition(cateString), (value) {
                                        _selectCateSortCondition =
                                        value.name == 'All' ? null : value;
                                        selctionList[2] = value.name == 'All'
                                            ? GZXDropDownHeaderItem('Category')
                                            : GZXDropDownHeaderItem(value.name);
                                        setState(() {});
                                        BlocProvider.of<RestaurantListBloc>(context)
                                            .add(FilterRestaurantListEvent(
                                            entity_id: authstate.user.entityId
                                                .toString(),
                                            entity_type:
                                            authstate.user.entityType,
                                            category:
                                            _selectCateSortCondition?.id,
                                            cuisines:
                                            _selectCuisineSortCondition?.id,
                                            lat: authstate.user.lat,
                                            lon: authstate.user.long,
                                            radius: _selectDistanceSortCondition
                                                ?.name));
                                        _dropdownMenuController.hide();
                                      }, _selectCateSortCondition))
                                ],
                              );
                            } else {
                              return GZXDropDownMenu(
                                // controller用于控制menu的显示或隐藏
                                controller: _dropdownMenuController,
                                // 下拉菜单显示或隐藏动画时长
                                animationMilliseconds: 300,
                                // 下拉后遮罩颜色
//          maskColor: Theme.of(context).primaryColor.withOpacity(0.5),
//          maskColor: Colors.red.withOpacity(0.5),
                                // 下拉菜单，高度自定义，你想显示什么就显示什么，完全由你决定，你只需要在选择后调用_dropdownMenuController.hide();即可
                                menus: [
                                  GZXDropdownMenuBuilder(
                                      dropDownHeight: 100,
                                      dropDownWidget: Container(
                                        child:
                                        Text('No location detail could be found'),
                                      )),
                                  GZXDropdownMenuBuilder(
                                      dropDownHeight: 100,
                                      dropDownWidget: Container(
                                        child:
                                        Text('No cuisine detail could be found'),
                                      )),
                                  GZXDropdownMenuBuilder(
                                      dropDownHeight: 100,
                                      dropDownWidget: Container(
                                        child:
                                        Text('No category detail could be found'),
                                      ))
                                ],
                              );
                            }
                          },
                        ),
                      ],
                    );
                  } else {
                    return MyLoading();
                  }
                },
              );
            }
            else{
              return MyErrorWidget();
            }
          },
        ),
      ),
    );
  }
}
