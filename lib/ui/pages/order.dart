import 'package:chifood/ui/widgets/couponSliverOrderList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class OrderPage extends StatefulWidget {
  final void Function() callback;

  OrderPage(this.callback);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          child: Stack(
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                        left: 30.0, right: 30, top: 40.0, bottom: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Color(0xffebebea),
                              blurRadius: 2.0,
                              spreadRadius: 1.0,
                              offset: Offset(0, 2.0))
                        ],
                        //border: Border(bottom: BorderSide(color: Color(0xffb0b1b0)))
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            widget.callback();
                          },
                          child: Container(
                              width: 35.0,
                              height: 35.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(5.0)),
                                  image: DecorationImage(image: AssetImage(
                                    'assets/icon/menu.png',), fit: BoxFit.cover)
                              )
                          ),
                        ),
                        Text('Order', style: TextStyle(fontWeight: FontWeight
                            .bold, fontSize: 20.0),),
                        Container(
                          width: 35.0,
                          height: 35.0,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(5.0)),
                              image: DecorationImage(image: AssetImage(
                                'assets/img/default_user.jpg',),
                                  fit: BoxFit.cover)
                          ),
                        )
                      ],
                    ),
                  ),
                  CouponOrderList()
                ],
              ),


              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 180,
                  padding: EdgeInsets.symmetric(
                      vertical: 30.0, horizontal: 30.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                          topLeft: Radius.circular(15.0)),
                      boxShadow: [
                        BoxShadow(color: Color(0xffebebea),
                            blurRadius: 2.0,
                            spreadRadius: 2.0,
                            offset: Offset(0, 2.0))
                      ]
                    //border: Border(top: BorderSide(color: Color(0xffb0b1b0)))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Discount', style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14.0),),
                          Text('\$ 10.0', style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14.0),)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Total', style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 27.0),),
                          Text('\$ 100.0', style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 27.0),)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.82,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 15.0),
                            decoration: BoxDecoration(
                                color: Theme
                                    .of(context)
                                    .primaryColor,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10.0)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xffebebea),
                                      blurRadius: 1.0,
                                      spreadRadius: 2.0,
                                      offset: Offset(1.0, 1.0)
                                  )
                                ]
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Confirm Order', style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.0),),
                                Icon(Icons.add_shopping_cart)
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
