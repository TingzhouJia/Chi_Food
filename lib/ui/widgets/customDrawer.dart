

import 'package:chifood/ui/pages/order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  static final double maxSlide=225;
  static const double minDragStartEdge = 60;
  static  double maxDragStartEdge = maxSlide - 16;
  bool _canBeDragged=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController=new AnimationController(vsync: this,duration: Duration(milliseconds: 250));
  }
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
  void close() => _animationController.reverse();

  void open() => _animationController.forward();

  void toggleDrawer() => _animationController.isCompleted ? close() : open();

  void _onDragStart(DragStartDetails details){
      bool isDragOpenFromLeft =_animationController.isDismissed&&details.globalPosition.dx<minDragStartEdge;
      bool isDragOpenFromRight =_animationController.isCompleted&&details.globalPosition.dx> maxDragStartEdge;
      _canBeDragged = isDragOpenFromLeft||isDragOpenFromRight;
  }
  void _onDragUpdate(DragUpdateDetails details){
    if(_canBeDragged){
      double delta=details.primaryDelta /maxSlide;
      _animationController.value+=delta;
    }
  }
  void _onDragEnd(DragEndDetails details){
    if(_animationController.isDismissed||_animationController.isCompleted){
      return;
    }
    if(details.velocity.pixelsPerSecond.dx.abs()>=365.0){
      double visualelocity=details.velocity.pixelsPerSecond.dx/MediaQuery.of(context).size.width;
      _animationController.fling(velocity: visualelocity);
    }else if(_animationController.value<0.5){
      close();
    }else{
      open();
    }
  }

  @override
  Widget build(BuildContext context) {
    var yellow=Container(color: Colors.blue,);
    var blue=Container(color: Colors.yellow,);

    return GestureDetector(
      onHorizontalDragStart: _onDragStart,
      onHorizontalDragUpdate:_onDragUpdate ,
      onHorizontalDragEnd:_onDragEnd ,
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context,_){
          double animValue = _animationController.value;
          final slideAmount = maxSlide * animValue;
          final contentScale = 1.0 - (0.3 * animValue);
          return Stack(
            children: <Widget>[
              yellow,
              Transform(
                transform: Matrix4.identity()
                  ..translate(slideAmount)
                  ..scale(contentScale, contentScale),
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: _animationController.isCompleted ? close : null,
                  child: OrderPage(open),
                ),


              )
            ],
          );
        },
      ),
    );
  }
}
