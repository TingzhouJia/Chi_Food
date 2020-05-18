import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  int _count=5;
  Timer _timerUtil;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
  void _switchRootView(){
    Navigator.popAndPushNamed(context, '/HomePage',);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  void _configureCountDown() {
    _timerUtil = Timer.periodic(Duration(seconds: 1),(tick){

      if (_count == 0) {
        // 切换到主页面
        _switchRootView();
      } else {
        setState(() {
          _count = _count--;
        });
      }
    });


  }
  Widget _buildDefaultLaunchImage() {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Center(
        child: Text('Chi',style: TextStyle(color: Colors.white),),
      ),
      decoration: BoxDecoration(
        // 这里设置颜色 跟启动页一致的背景色，以免发生白屏闪烁
        color: Color.fromRGBO(0, 10, 24, 1),
        image: DecorationImage(
          // 注意：启动页 别搞太大 以免加载慢
          image: AssetImage('assets/img/launch.jepg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
  Widget _buildNewFeatureWidget() {
    return Swiper(
      itemCount: 3,
      loop: false,
      itemBuilder: (_, index) {
        final String name =
             'assets/img/guide${index + 1}.jpeg';
        Widget widget = Image.asset(
          name,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        );
        if (index == 2) {
          return Stack(
            children: <Widget>[
              widget,
              Positioned(
                child: InkWell(
                  child: Container(
                   child: Text('Skip',),
                    width: 175.0,
                    height: 55.0,
                  ),
                  onTap: _switchRootView,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                ),
                left: (MediaQuery.of(context).size.width - 175) * 0.5,
                bottom: 55.0,
                width: 175.0,
                height: 55.0,
              ),
            ],
          );
        } else {
          return widget;
        }
      },
    );
  }
}
