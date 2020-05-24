

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chifood/bloc/authBloc/AuthBloc.dart';
import 'package:chifood/bloc/authBloc/AuthState.dart';
import 'package:chifood/bloc/implementation/SelectionImplement.dart';
import 'package:chifood/bloc/selectionBloc/selectionEvent.dart';
import 'package:chifood/bloc/selectionBloc/selectionState.dart';
import 'package:chifood/model/category.dart';
import 'package:chifood/model/cuisine.dart';
import 'package:chifood/model/establishment.dart';
import 'package:chifood/model/geoLocation.dart';
import 'package:flutter/cupertino.dart';

class SelectionBloc extends Bloc<SelectionEvent,SelectionState>{
  final SelectionImplement selectionRepo;
  final AuthenticationBloc AuthBloc;
  StreamSubscription authSubscription;
  SelectionBloc({@required this.selectionRepo,this.AuthBloc}){
    authSubscription=AuthBloc.listen((state){
      add(LoadCategory());
      if(state is Authenticated){

        add(LoadCusines(city_id: state.user.cityId));
        add(LoadEstablishment(city_id: state.user.cityId));
        add(LoadGeoInfo(state.user.lat,state.user.long));
      }
    });
  }
  @override
  // TODO: implement initialState
  SelectionState get initialState => LoadingSelectionState();

  @override
  Stream<SelectionState> mapEventToState(SelectionEvent event) async*{
    if(event is LoadCusines){
      yield* _mapLoadCuisineToState(event);
    }else if(event is LoadEstablishment){
      yield* _mapLoadEstablishmentToState(event);
    }else if(event is LoadCategory){
      yield* _mapLoadCategoryToState();
    }else if(event is LoadGeoInfo){
      yield* _mapLoadGeoLocationToState(event);
    }
  }
  @override
  Future<void> close() {
    authSubscription.cancel();
    return super.close();
  }

  Stream<SelectionState> _mapLoadCuisineToState(LoadCusines data) async*{
    try{
      List<Cuisine> cuisineList= await selectionRepo.getCuisines(city_id: data.city_id,lat:data.lat,lon:data.lon);

      yield CuisineState(cuisineList);
    }catch(_){
      yield SelectionLoadFailState();
    }
  }
  Stream<SelectionState> _mapLoadEstablishmentToState(LoadEstablishment data) async*{
    try{
      List<Establishment> establishment= await selectionRepo.getEstablishments(city_id: data.city_id,lat:data.lat,lon:data.lon);

      yield EstablishmentState(establishment);
    }catch(_){
      yield SelectionLoadFailState();
    }
  }

  Stream<SelectionState> _mapLoadGeoLocationToState(LoadGeoInfo data) async*{
      try{
        GeoLocation geoLocation=await selectionRepo.getGeoLocation(lat: data.lat,lon: data.lon);
        yield GeoLocationState(geoLocation);
      }catch(_){
        SelectionLoadFailState();
      }
  }
  Stream<SelectionState> _mapLoadCategoryToState() async*{
    try{
      List<Category> categoryList= await selectionRepo.getCategories();

      yield CategoryState(categoryList);
    }catch(_){
      yield SelectionLoadFailState();
    }
  }

}