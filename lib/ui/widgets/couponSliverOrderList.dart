
import 'package:chifood/bloc/orderBloc/orderBloc.dart';
import 'package:chifood/bloc/orderBloc/orderState.dart';
import 'package:chifood/model/orderItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CouponOrderList extends StatefulWidget {
  List<List<OrderItem>> itemList;

  CouponOrderList(this.itemList);

  @override
  _CouponOrderListState createState() => _CouponOrderListState();
}

class _CouponOrderListState extends State<CouponOrderList> {
  SlidableState state;
  SlidableController slidableController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    state = new SlidableState();
    slidableController = SlidableController(
//      onSlideAnimationChanged: handleSlideAnimationChanged,
//      onSlideIsOpenChanged: handleSlideIsOpenChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.7,
      width: double.infinity,
      color: Color(0xfff9f8f8),
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: MediaQuery.removePadding(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return RestaurantContainer();
          },
          itemCount:2,shrinkWrap: true,
        ), context: context,
      ),
    );
  }

  Widget RestaurantContainer({List<OrderItem> itemList}){
      return Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          boxShadow: [
            BoxShadow(
              color: Color(0xffd3d3d3).withOpacity(0.46),
              spreadRadius: 1.0,
              offset: Offset(1.0,3.0)
            )
          ]
        ),
        child:Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xffd3d3d3))
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width*0.7),
                    child: Text('Sushi Tima',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w700),),
                  ),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),
            ListView.builder(itemBuilder: (BuildContext context,int index){
              return Slidable(
                actionExtentRatio: 0.25,
                actionPane: SlidableScrollActionPane(),
                key: Key('key$index'),
                dismissal: SlidableDismissal(
                  child: SlidableDrawerDismissal(),
                  closeOnCanceled: true,
                ),
                secondaryActions: <Widget>[
                  BlocBuilder<OrderBloc,OrderState>(
                    builder: (BuildContext context,OrderState state ){
                      if(state is OrderListState){
                        return Container(
                          margin: EdgeInsets.only(
                              top: 5.0, bottom: 5.0, right: 5.0, left: 5.0),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10.0),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xfff0efef),
                                    blurRadius: 5.0,
                                    offset: Offset(3.0, 3.0))
                              ]),
                          child: IconSlideAction(
                            caption: 'Delete',
                            color: Colors.red,
                            icon: Icons.delete,
                            onTap: (){

                            },
                            closeOnTap: true,
                          ),
                        );
                      }else{
                        return SizedBox(height: 1,);
                      }
                    },
                  ),


                ],
                closeOnScroll: true,
                child: GestureDetector(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    //padding: EdgeInsets.all(5.0),
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Color(0xffd3d3d3))
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              image: DecorationImage(image: AssetImage('assets/img/guide2.jpeg'),fit: BoxFit.fill)
                          ),
                          width: 75.0,
                          height: 75.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            ConstrainedBox(
                              constraints: BoxConstraints(maxWidth: 150),
                              child: Text('Pumpkin Cream Soup',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14.0),),
                            ),

                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('\$ 19.9',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 16.0),),
                            SizedBox(height: 10,),
                            Text('x1')
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },itemCount: 3,shrinkWrap: true,physics:NeverScrollableScrollPhysics(),)
          ],
        ),
      );
  }
}
