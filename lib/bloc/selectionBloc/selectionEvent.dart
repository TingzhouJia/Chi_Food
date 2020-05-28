
import 'package:chifood/model/baseUser.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class SelectionEvent extends Equatable {
  const SelectionEvent();

  @override
  List<Object> get props => [];
}

class LoadingSelection extends SelectionEvent{}

class LoadSelectionSuccess extends SelectionEvent{}

class LoadCategory extends SelectionEvent{

}


class LoadGeoInfo extends SelectionEvent{
  final double lat;
  final double lon;

  LoadGeoInfo(this.lat, this.lon);

}

class LoadCusines extends SelectionEvent{
  final int city_id;
  final double lat;
  final double lon;

  LoadCusines({@required this.city_id, this.lat, this.lon});

}

class LoadAllBaseChoice extends SelectionEvent{
  final int city_id;
  final String lat;
  final String lon;
  final String entity_id;
  final String entity_type;

  LoadAllBaseChoice({this.city_id, this.lat, this.lon,this.entity_type,this.entity_id});

}

class LoadEstablishment extends SelectionEvent{
  final int city_id;
  final double lat;
  final double lon;

  LoadEstablishment({@required this.city_id, this.lat, this.lon});
}

class LoadSelectionFail extends SelectionEvent{}
