

import 'package:bloc/bloc.dart';
import 'package:chifood/bloc/restaurantListBloc/restaurantListEvent.dart';
import 'package:chifood/bloc/restaurantListBloc/restaurantListState.dart';

class RestaurantListBloc extends Bloc<RestaurantListEvent,RestaurantListState>{
  @override
  // TODO: implement initialState
  RestaurantListState get initialState => LoadFailRestaurantListState();

  @override
  Stream<RestaurantListState> mapEventToState(RestaurantListEvent event) async*{
    // TODO: implement mapEventToState
    if(event is FilterRestaurantListEvent){
      yield* _mapFilterChoiceToState(event);
    }

  }

  Stream<RestaurantListState> _mapFilterChoiceToState(FilterRestaurantListEvent event) async*{
      try{

      }catch(e){
       yield LoadFailRestaurantListState();
    }
  }

}