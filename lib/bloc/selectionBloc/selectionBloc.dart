

import 'package:bloc/bloc.dart';
import 'package:chifood/bloc/implementation/SelectionImplement.dart';
import 'package:chifood/bloc/selectionBloc/selectionEvent.dart';
import 'package:chifood/bloc/selectionBloc/selectionState.dart';
import 'package:chifood/model/category.dart';
import 'package:chifood/model/cuisine.dart';
import 'package:chifood/model/establishment.dart';
import 'package:flutter/cupertino.dart';

class SelectionBloc extends Bloc<SelectionEvent,SelectionState>{
  final SelectionImplement selectionRepo;

  SelectionBloc({@required this.selectionRepo});
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
    }
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
  Stream<SelectionState> _mapLoadCategoryToState() async*{
    try{
      List<Category> categoryList= await selectionRepo.getCategories();

      yield CategoryState(categoryList);
    }catch(_){
      yield SelectionLoadFailState();
    }
  }

}