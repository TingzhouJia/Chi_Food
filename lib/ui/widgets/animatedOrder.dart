import 'package:flutter/cupertino.dart';

class AnimatedOrder extends StatefulWidget {
  @override
  _AnimatedOrderState createState() => _AnimatedOrderState();
}

class _AnimatedOrderState extends State<AnimatedOrder> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    // 通过 Tween 对象 创建 Animation 对象
    animation = Tween(begin: 0.0, end: 60.0).animate(controller)
      ..addListener(() {
        // 注意：这句不能少，否则 widget 不会重绘，也就看不到动画效果
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }});

      controller.forward();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context,_){
        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity() ..translate(animation.value),
          child: Container(

              child:Image.asset('assets/img/delivery.png',width: 100,height: 100,)
          ),
        );
      },

    );
  }
}
