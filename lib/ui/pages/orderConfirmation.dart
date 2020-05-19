import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
class OrderConfirmation extends StatefulWidget {
  @override
  _OrderConfirmationState createState() => _OrderConfirmationState();
}

class _OrderConfirmationState extends State<OrderConfirmation>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        new AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    var yellow = Container(
      color: Colors.blue,
    );
    var blue = Container(
      color: Colors.yellow,
    );
    return GestureDetector(

      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, _) {
          double animValue = _animationController.value;
          return Stack(
            children: <Widget>[
              yellow,
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity() ..scale(1.0-0.2*animValue) ..rotateY(_animationController.value*3.15),
                child:GestureDetector(
                  onTap: ()=>_animationController.isCompleted?_animationController.reverse():_animationController.forward(),
                    child: blue),
              )
            ],
          );
        },
      ),
    );
  }
}
