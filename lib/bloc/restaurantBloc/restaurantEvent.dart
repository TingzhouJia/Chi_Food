import 'package:chifood/model/restaurants.dart';
import 'package:equatable/equatable.dart';

abstract class RestaurantEvent extends Equatable {
  RestaurantEvent();

  @override
  List<Object> get props => [];
}

class LoadRestaurantAllInfoEvent extends RestaurantEvent {
  final Restaurants res;

  LoadRestaurantAllInfoEvent(this.res);
}

class LoadReviews extends RestaurantEvent {
  final String res_id;

  LoadReviews(this.res_id);
}

class LoadYelpReview extends RestaurantEvent {
  final String id;

  LoadYelpReview(this.id);
}

class LoadYelpBusiness extends RestaurantEvent {
  String term;
  String location;
  String locale;
  double latitude;
  double longitude;

  LoadYelpBusiness(this.term, this.location, this.locale, this.latitude,
      this.longitude);

}
