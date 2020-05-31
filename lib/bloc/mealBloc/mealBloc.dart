


import 'dart:async';

import 'package:chifood/bloc/mealBloc/menuEvent.dart';
import 'package:chifood/bloc/mealBloc/menuState.dart';
import 'package:chifood/config.dart';
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
      List<String> result=<String>[];
      Response response=await myDio.get<dynamic>(MENU_CATEGORY);

      await response.data['meals'].map((dynamic each) async {
         Response res=await myDio.get<dynamic>('$MENU_URL${each['strCategory']}');
         List<MenuItem> items=res.data['meals'].map<MenuItem>((dynamic count){

            return standardSerializers.deserializeWith(MenuItem.serializer, count);
         }).toList();
         menuItem.add(items);
       result.add(each['strCategory']) ;

      });
      yield LoadMenuState(menuItem,result);
    }catch(e){
      print(e);
      yield LoadMenuFail();
    }
  }
}