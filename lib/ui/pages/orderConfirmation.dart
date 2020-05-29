import 'package:chifood/ui/pages/home.dart';
import 'package:chifood/ui/pages/order.dart';
import 'package:chifood/ui/widgets/AddressCard.dart';
import 'package:chifood/ui/widgets/paymentCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
class OrderConfirmation extends StatefulWidget {


  @override
  _OrderConfirmationState createState() => _OrderConfirmationState();
}


class _OrderConfirmationState extends State<OrderConfirmation>
    with SingleTickerProviderStateMixin {
  bool isFront = true;
  bool hasHalf = false;
  AnimationController _animationController;
  Animation<double> frontAnimation;
  Animation<double> backAnimation;

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        new AnimationController(vsync: this, duration: Duration(seconds: 2));

    _animationController.addListener(() {
      if (_animationController.value > 0.5) {
        if (hasHalf == false) {
          isFront = !isFront;
        }
        hasHalf = true;
      }
      setState(() {});
    });
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        hasHalf = false;
      }
    });
    frontAnimation = Tween(begin: 0.0, end: 0.5).animate(CurvedAnimation(
        parent: _animationController,
        curve:  Interval(0.0, 0.5, curve: Curves.easeIn)));
    backAnimation = Tween(begin: 1.5, end: 2.0).animate(CurvedAnimation(
        parent: _animationController,
        curve:  Interval(0.5, 1.0, curve: Curves.easeOut)));
  }
  void animate() {
    _animationController.stop();
    _animationController.value = 0;
   _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    var yellow = Container(
      color: Theme.of(context).primaryColor,
    );
    
    double value = 0;
    if (_animationController.status == AnimationStatus.forward) {
      if (hasHalf == true) {
        value = backAnimation.value;
      } else {
        value = frontAnimation.value;
      }
    }
    return GestureDetector(

      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, _) {

          return Stack(
            children: <Widget>[
              yellow,
              Transform(
                alignment: Alignment.center,
                transform:  Matrix4.identity()  ..setEntry(3, 2, 0.002)   ..rotateY(value*math.pi)  ,
                child:IndexedStack(
                  index: isFront ? 0 : 1,
                  children: <Widget>[
                    PaymentCard(animate),CustomCard(animate)
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
