

import 'package:chifood/model/orderItem.dart';
import 'package:equatable/equatable.dart';

abstract class OrderState extends Equatable{

  @override
  List<Object> get props =><Object>[];

  OrderState();
}

class OrderListState extends OrderState{
  List<List<OrderItem>> orderList;
  OrderListState(this.orderList);
  @override
  List<Object> get props =>[orderList];
}

class OrderLoadingState extends OrderState{

  OrderLoadingState();
}
class NoOrderState extends OrderState{

  NoOrderState();
}