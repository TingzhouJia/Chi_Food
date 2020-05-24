
import 'package:chifood/model/category.dart';
import 'package:chifood/model/cuisine.dart';
import 'package:chifood/model/establishment.dart';
import 'package:chifood/model/geoLocation.dart';
import 'package:equatable/equatable.dart';

abstract class SelectionState extends Equatable {
  const SelectionState();

  @override
  List<Object> get props => [];
}

class LoadingSelectionState extends SelectionState{}

class CuisineState extends SelectionState{
  final List<Cuisine> cuisineList;

  CuisineState(this.cuisineList);

}
class GeoLocationState extends SelectionState{
  final GeoLocation geoLocation;

  GeoLocationState(this.geoLocation);

}

class CategoryState extends SelectionState{
  final List<Category> categoryList;

  CategoryState(this.categoryList);

}

class EstablishmentState extends SelectionState{
  final List<Establishment> establishmentList;

  EstablishmentState(this.establishmentList);

}

class SelectionLoadFailState extends SelectionState{}