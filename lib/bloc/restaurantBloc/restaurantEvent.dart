



import 'package:equatable/equatable.dart';

abstract class RestaurantEvent extends Equatable{

  RestaurantEvent();
  @override
  List<Object> get props => [];
}


class LoadRestaurantAllInfoEvent extends RestaurantEvent{
  final String res_id;

  LoadRestaurantAllInfoEvent(this.res_id);

}

class LoadReviews extends RestaurantEvent{
  final String res_id;

  LoadReviews(this.res_id);

}
