import 'package:chifood/model/orderItem.dart';

List<List<OrderItem>> SortList(OrderItem content,List<List<OrderItem>> source){
    for(List<OrderItem> res in source){
      if(res[0].restaurant.id==content.restaurant.id){
        res.add(content);
        break;
      }else{
        source.add([content]);
        break;
      }
    }
    return source;
}

List<List<OrderItem>> removeFromList(OrderItem content,List<List<OrderItem>> source,int index){
  source[index].removeWhere((OrderItem each)=>each.id==content.id);
  return source;
}