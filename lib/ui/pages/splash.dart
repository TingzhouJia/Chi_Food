import 'dart:async';

import 'package:chifood/bloc/authBloc/AuthBloc.dart';
import 'package:chifood/bloc/authBloc/AuthEvent.dart';
import 'package:chifood/bloc/authBloc/AuthState.dart';
import 'package:chifood/bloc/implementation/FireAuthRepo.dart';
import 'package:chifood/bloc/selectionBloc/selectionBloc.dart';
import 'package:chifood/bloc/selectionBloc/selectionEvent.dart';
import 'package:chifood/bloc/selectionBloc/selectionState.dart';
import 'package:chifood/ui/pages/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SplashPage extends StatefulWidget {
  FireAuthRepo _firebaseAuth;

  SplashPage(this._firebaseAuth);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  int _count=5;
  bool jump=false;
  void initState() {
    // TODO: implement initState

    super.initState();
    _configureCountDown();

  }
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc,AuthenticationState>(
      listener: (context,state){
        if(state is Authenticated ){
          BlocProvider.of<SelectionBloc>(context)
            ..add(LoadAllBaseChoice(city_id: state.user.cityId,lat: state.user.lat,lon: state.user.long,entity_id: state.user.entityId.toString(),entity_type: state.user.entityType));
          Future.delayed(Duration(seconds: 5),()=>Navigator.of(context).popAndPushNamed('/HomePage'));
        }else if(state is Unauthenticated){
          Future.delayed(Duration(seconds: 5),()=>Navigator.of(context).popAndPushNamed('/setUp'));

        }
      },
      child: Scaffold(
        body: _buildDefaultLaunchImage(),
      ),
    );
  }
  void _switchRootView(){
//    Navigator.pushAndRemoveUntil(
////      context,
////      MaterialPageRoute(builder: (BuildContext context) => HomePage()),
////      ModalRoute.withName('/'),
////    );

  }
  @override
  void _configureCountDown() {
    Timer.periodic(Duration(seconds: 1),(tick){

      if(jump){
        tick.cancel();
//        Navigator.pushAndRemoveUntil(
//          context,
//          MaterialPageRoute(builder: (BuildContext context) => HomePage()),
//          ModalRoute.withName('/'),
//        );


      }
      if (_count == 0) {

        tick.cancel();
      } else {
      _count--;
        setState(() {

        });
      }
    });


  }



  Widget _buildDefaultLaunchImage() {
    return Stack(
      children: <Widget>[
        Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Center(
            child: Text('Chi',style: TextStyle(color: Colors.white,fontSize: 42.0,fontWeight: FontWeight.bold),),
          ),
          decoration: BoxDecoration(
            // 这里设置颜色 跟启动页一致的背景色，以免发生白屏闪烁
            color: Color.fromRGBO(0, 10, 24, 1),
            image: DecorationImage(
              // 注意：启动页 别搞太大 以免加载慢
              image: AssetImage('assets/img/launch.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 40,
          right: 10,
          child: GestureDetector(
            onTap: ()=>setState((){jump=true;}),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                border: Border.all(color: Colors.white)
              ),
              child: Text('Skip $_count',style: TextStyle(color: Colors.white),),
            ),
          ),
        )
      ],
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
                    padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 7.0),
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.all(Radius.circular(10.0))
                   ),
                   child: Text('Skip',textAlign: TextAlign.center,),

                  ),
                  //onTap: _switchRootView,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                ),
                right: 10,
                bottom: 55.0,
               
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
