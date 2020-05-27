
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



class BaseChoice extends SelectionState{
  final List<Establishment> establishmentList;
  final List<Category> categoryList;
  final GeoLocation geoLocation;
  final List<Cuisine> cuisineList;

  BaseChoice(this.establishmentList, this.categoryList, this.geoLocation,
      this.cuisineList);
  @override
  List<Object> get props => [establishmentList,categoryList,cuisineList,categoryList];
}

class SelectionLoadFailState extends SelectionState{}