

import 'package:bloc/bloc.dart';
import 'package:chifood/bloc/implementation/RestaurantImplement.dart';
import 'package:chifood/bloc/restaurantBloc/restaurantEvent.dart';
import 'package:chifood/bloc/restaurantBloc/restaurantState.dart';
import 'package:chifood/model/dailyMenu.dart';
import 'package:chifood/model/restaurants.dart';
import 'package:chifood/model/review.dart';
import 'package:chifood/model/yelpBusiness.dart';
import 'package:chifood/model/yelpReview.dart';

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
        final Restaurants res=event.res;
        List<Review> reviewList=await restaurantImplement.fetchReviews(res_id: res.id);
        DailyMenu menu=await restaurantImplement.fetchDailyMenu(res_id: res.id);
        Restaurants restaurant=await restaurantImplement.fetchRestaurant(res_id: res.id);
        YelpBusiness business=await restaurantImplement.getYelpBusiness(term: res.name,
            location: res.location.locality,latitude: res.location.latitude,longitude: res.location.longitude);
        List<YelpReview> yelpReviewList=await restaurantImplement.getYelpBusinessReview(id: business.id);
        yield LoadedRestaurantInfoState(restaurant: restaurant,reviewList: reviewList,menu: menu,business: business,yelpReivwList: yelpReviewList);
    }catch(_){
      LoadFailRestaurantState();
    }
  }

}