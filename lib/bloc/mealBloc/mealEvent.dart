
import 'package:equatable/equatable.dart';

abstract class MealEvent extends Equatable{
  MealEvent();

  @override
  List<Object> get props => [];
}



class LoadMealEvent extends MealEvent{
  String category;

  LoadMealEvent(this.category);

}