

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chifood/bloc/authBloc/AuthBloc.dart';
import 'package:chifood/bloc/implementation/SelectionImplement.dart';
import 'package:chifood/bloc/selectionBloc/selectionEvent.dart';
import 'package:chifood/bloc/selectionBloc/selectionState.dart';
import 'package:chifood/model/category.dart';
import 'package:chifood/model/cuisine.dart';
import 'package:chifood/model/establishment.dart';
import 'package:chifood/model/geoLocation.dart';
import 'package:chifood/model/locationDetail.dart';
import 'package:chifood/model/restaurants.dart';
import 'package:flutter/cupertino.dart';

class SelectionBloc extends Bloc<SelectionEvent,SelectionState>{
  SelectionBloc({@required this.selectionRepo,this.AuthBloc}){
//    authSubscription=AuthBloc.listen((state){
//
//      if(state is Authenticated){
//      add(LoadAllBaseChoice(city_id: state.user.cityId,lon: state.user.long,lat: state.user.lat));
//      }
//    });
  }
  final SelectionImplement selectionRepo;
  final AuthenticationBloc AuthBloc;
   StreamSubscription<dynamic> authSubscription;

  @override

  SelectionState get initialState => LoadingSelectionState();

  @override
  Stream<SelectionState> mapEventToState(SelectionEvent event) async*{

   if(event is LoadAllBaseChoice){
        yield* _mapLoadAllToState(event);
    }
  }
  @override
  Future<void> close() {
    authSubscription.cancel();
    return super.close();
  }


  Stream<SelectionState> _mapLoadAllToState(LoadAllBaseChoice data) async*{
    try{
      final List<Establishment> establishment= await selectionRepo.getEstablishments(city_id: data.city_id,lat:data.lat,lon:data.lon);
      final GeoLocation geoLocation=await selectionRepo.getGeoLocation(lat: data.lat,lon: data.lon);
      final List<Category> categoryList= await selectionRepo.getCategories();
      final List<Cuisine> cuisineList= await selectionRepo.getCuisines(city_id: data.city_id,lat:data.lat,lon:data.lon);
      final List<Restaurants> locationDetail=await selectionRepo.getLocationDetail(entity_id: data.entity_id,entity_type: data.entity_type);
      yield BaseChoice(establishment,categoryList,geoLocation,cuisineList,locationDetail);
    }catch(e){
      print(e);
      yield SelectionLoadFailState();
    }
  }





}