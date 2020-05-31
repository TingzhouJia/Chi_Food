


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
  // TODO: implement initialState
  MenuState get initialState => LoadingMenuState();



  @override
  Stream<MenuState> mapEventToState(MenuEvent event) async* {
    if(event is LoadMenuEvent){
        yield* _mapLoadMenuToState(event);
    }

  }

  Stream<MenuState> _mapLoadMenuToState(LoadMenuEvent event) async*{
    try{
      Response response=await myDio.get<Response>(MENU_CATEGORY);
      List<List<MenuItem>> menuItem;
      List<String> result=response.data['meals'].map<String>((Map<String,dynamic>each)async{
         Response res=await myDio.get<Response>('$MENU_URL${each['strCategory']}');
         List<MenuItem> items=res.data['meals'].map((Map<String,dynamic>count){
            return standardSerializers.deserializeWith(MenuItem.serializer, count);
         });
         menuItem.add(items);
          return each['strCategory'];
      }).toList();

      yield LoadMenuState(menuItem,result);
    }catch(_){
      yield LoadMenuFail();
    }
  }
}