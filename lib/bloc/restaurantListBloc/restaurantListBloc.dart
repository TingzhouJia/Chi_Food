

import 'package:bloc/bloc.dart';
import 'package:chifood/bloc/implementation/FilterRestaurantImplement.dart';
import 'package:chifood/bloc/restaurantListBloc/restaurantListEvent.dart';
import 'package:chifood/bloc/restaurantListBloc/restaurantListState.dart';
import 'package:chifood/model/restaurants.dart';

class RestaurantListBloc extends Bloc<RestaurantListEvent,RestaurantListState>{
  FilterRestaurant filterRestaurantRepo;

  RestaurantListBloc(this.filterRestaurantRepo);

  @override
  // TODO: implement initialState
  RestaurantListState get initialState => NoRestaurantListState();

  @override
  Stream<RestaurantListState> mapEventToState(RestaurantListEvent event) async*{
    // TODO: implement mapEventToState
    if(event is FilterRestaurantListEvent){
      yield* _mapFilterChoiceToState(event);
    }

  }

  Stream<RestaurantListState> _mapFilterChoiceToState(FilterRestaurantListEvent event) async*{
      yield LoadingRestaurantListState();
      try{
        List<Restaurants> res=await filterRestaurantRepo.getFilteredRestaurant(entity_type: event?.entity_type,entity_id: event?.entity_type,
        category: event?.category,cuisines: event?.category,lon: event?.lon,lat: event?.lat);
        yield LoadedFilterRestaurantListState(res);
      }catch(e){
       yield LoadFailRestaurantListState();
    }
  }

}