import 'package:equatable/equatable.dart';

abstract class MealState extends Equatable{

  MealState();
  @override
  List<Object> get props => [];
}

class LoadingMealState extends MealState{

}


class LoadMealState extends MealState{

}