


import 'dart:async';

import 'package:chifood/bloc/mealBloc/menuEvent.dart';
import 'package:chifood/bloc/mealBloc/menuState.dart';
import 'package:chifood/config.dart';
import 'package:chifood/model/menuCategory.dart';
import 'package:chifood/model/menuItem.dart';
import 'package:chifood/model/serializer.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuBloc extends Bloc<MenuEvent,MenuState> {
  Dio myDio=Dio();
  @override
  MenuState get initialState => LoadingMenuState();



  @override
  Stream<MenuState> mapEventToState(MenuEvent event) async* {
    if(event is LoadMenuEvent){
        yield* _mapLoadMenuToState(event);
    }

  }

  Stream<MenuState> _mapLoadMenuToState(LoadMenuEvent event) async*{
    try{
      List<List<MenuItem>> menuItem=<List<MenuItem>>[];

      Response response=await myDio.get<dynamic>(MENU_CATEGORY);

      List<MenuCategory> result= response.data['meals'].map<MenuCategory>((dynamic each) {
        return standardSerializers.deserializeWith(MenuCategory.serializer, each);

      }).toList();
      await Future.forEach(result, (MenuCategory data)async{
        menuItem.add(await getItemList(data.strCategory)) ;
      });
      yield LoadMenuState(menuItem,result);
    }catch(e){
      print(e);
      yield LoadMenuFail();
    }
  }

  Future<List<MenuItem>> getItemList(String item) async{
    Response res=await myDio.get<dynamic>('$MENU_URL$item');
    return res.data['meals'].map<MenuItem>((dynamic each){
        return standardSerializers.deserializeWith(MenuItem.serializer, each);
    }).toList();
  }


}