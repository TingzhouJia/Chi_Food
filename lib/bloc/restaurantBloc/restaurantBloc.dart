

import 'package:bloc/bloc.dart';
import 'package:chifood/bloc/restaurantBloc/restaurantEvent.dart';
import 'package:chifood/bloc/restaurantBloc/restaurantState.dart';

class RestaurantBloc extends Bloc<RestaurantEvent,RestaurantState>{
  @override
  // TODO: implement initialState
  RestaurantState get initialState => LoadingRestaurantInfoState();

  @override
  Stream<RestaurantState> mapEventToState(RestaurantEvent event) async* {

    if(event is LoadRestaurantAllInfoEvent){
      yield* _mapRestaurantInfoToState(event);
    }
  }
  Stream<RestaurantState> _mapRestaurantInfoToState(LoadRestaurantAllInfoEvent event){
    try{

    }catch(_){
      LoadFailRestaurantState();
    }
  }
}