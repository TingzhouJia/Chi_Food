import 'package:chifood/model/menuCategory.dart';
import 'package:chifood/model/menuItem.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
@immutable
abstract class MenuState extends Equatable{

  const MenuState();
  @override
  List<Object> get props =><Object>[];
}

class LoadingMenuState extends MenuState{

}

@immutable
class LoadMenuState extends MenuState{

  const LoadMenuState(this.menuList,this.menuCategory);

 final List<List<MenuItem>> menuList;
 final List<MenuCategory> menuCategory;


 @override
  List<Object> get props=><Object>[menuList];
}


class LoadMenuFail extends MenuState{}
