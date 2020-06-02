

import 'package:bloc/bloc.dart';
import 'package:chifood/bloc/orderBloc/orderEvent.dart';
import 'package:chifood/bloc/orderBloc/orderState.dart';
import 'package:chifood/model/orderItem.dart';

class OrderBloc extends Bloc<OrderEvent,OrderState>{
  @override
  // TODO: implement initialState
  OrderState get initialState => NoOrderState();

  @override
  Stream<OrderState> mapEventToState(OrderEvent event) async*{
    // TODO: implement mapEventToState
    yield* _mapOrderEventToState(event);
  }

  Stream <OrderState> _mapOrderEventToState(OrderEvent event)async* {
    yield OrderLoadingState();
    if (event is AddRemoveOrderEvent) {
      yield OrderListState(event.item);
    }
  }


}

