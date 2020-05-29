

import 'package:bloc/bloc.dart';
import 'package:chifood/bloc/implementation/RestaurantImplement.dart';
import 'package:chifood/bloc/restaurantBloc/restaurantEvent.dart';
import 'package:chifood/bloc/restaurantBloc/restaurantState.dart';
import 'package:chifood/model/dailyMenu.dart';
import 'package:chifood/model/restaurants.dart';
import 'package:chifood/model/review.dart';

class RestaurantBloc extends Bloc<RestaurantEvent,RestaurantState>{
  final RestaurantImplement restaurantImplement;

  RestaurantBloc(this.restaurantImplement);

  @override
  // TODO: implement initialState
  RestaurantState get initialState => LoadingRestaurantInfoState();

  @override
  Stream<RestaurantState> mapEventToState(RestaurantEvent event) async* {

    if(event is LoadRestaurantAllInfoEvent){
      yield* _mapRestaurantInfoToState(event);
    }
  }
  Stream<RestaurantState> _mapRestaurantInfoToState(LoadRestaurantAllInfoEvent event) async*{
    try{
        List<Review> reviewList=await restaurantImplement.fetchReviews(res_id: event.res_id);
        DailyMenu menu=await restaurantImplement.fetchDailyMenu(res_id: event.res_id);
        Restaurants restaurant=await restaurantImplement.fetchRestaurant(res_id: event.res_id);
        yield LoadedRestaurantInfoState(restaurant: restaurant,reviewList: reviewList,menu: menu);
    }catch(_){
      LoadFailRestaurantState();
    }
  }
}