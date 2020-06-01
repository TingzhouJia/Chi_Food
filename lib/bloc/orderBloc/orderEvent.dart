

import 'package:chifood/model/orderItem.dart';
import 'package:equatable/equatable.dart';

abstract class OrderEvent extends Equatable{

  OrderEvent();
  @override
  List<Object> get props => [];
}

class AddOrderEvent extends OrderEvent{
  OrderItem item;

  AddOrderEvent(this.item);

}