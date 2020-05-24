

import 'package:bloc/bloc.dart';
import 'package:chifood/bloc/implementation/SelectionImplement.dart';
import 'package:chifood/bloc/selectionBloc/selectionEvent.dart';
import 'package:chifood/bloc/selectionBloc/selectionState.dart';
import 'package:flutter/cupertino.dart';

class SelectionBloc extends Bloc<SelectionEvent,SelectionState>{
  final SelectionImplement selectionRepo;

  SelectionBloc({@required this.selectionRepo});
  @override
  // TODO: implement initialState
  SelectionState get initialState => LoadingSelectionState();

  @override
  Stream<SelectionState> mapEventToState(SelectionEvent event) {
    // TODO: implement mapEventToState
    return null;
  }

}