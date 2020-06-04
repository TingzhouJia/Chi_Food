

import 'package:chifood/model/orderItem.dart';
import 'package:equatable/equatable.dart';

abstract class OrderEvent extends Equatable{

  OrderEvent();
  @override
  List<Object> get props => [];
}

class AddRemoveOrderEvent extends OrderEvent{
  List<List<OrderItem>> item;

  AddRemoveOrderEvent(this.item);

}

