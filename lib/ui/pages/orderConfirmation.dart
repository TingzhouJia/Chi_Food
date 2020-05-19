import 'package:chifood/ui/pages/home.dart';
import 'package:chifood/ui/pages/order.dart';
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
        curve: new Interval(0.0, 0.5, curve: Curves.easeIn)));
    backAnimation = Tween(begin: 1.5, end: 2.0).animate(CurvedAnimation(
        parent: _animationController,
        curve: new Interval(0.5, 1.0, curve: Curves.easeOut)));
  }
  animate() {
    _animationController.stop();
    _animationController.value = 0;
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    var yellow = Container(
      color: Colors.blue,
    );
    var blue = Container(
      color: Colors.yellow,
    );
    var red = Container(
      color: Colors.red,
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
                transform: Matrix4.identity() ..setEntry(3, 2, 0.002)   ..rotateY(_animationController.value*math.pi)  ,
                child:GestureDetector(
                    onTap: ()=>animate(),
                    child: IndexedStack(
                      index: isFront ? 0 : 1,
                          children: <Widget>[
                            blue,red
                          ],
                    )),
              )
            ],
          );
        },
      ),
    );
  }
}
