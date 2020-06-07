import 'package:chifood/bloc/authBloc/AuthBloc.dart';
import 'package:chifood/bloc/authBloc/AuthEvent.dart';
import 'package:chifood/bloc/blocDelegate.dart';
import 'package:chifood/bloc/implementation/FireAuthRepo.dart';
import 'package:chifood/bloc/implementation/RestaurantImplement.dart';
import 'package:chifood/bloc/implementation/SelectionImplement.dart';
import 'package:chifood/bloc/mealBloc/mealBloc.dart';
import 'package:chifood/bloc/myDio.dart';
import 'package:chifood/bloc/orderBloc/orderBloc.dart';
import 'package:chifood/bloc/restaurantBloc/restaurantBloc.dart';
import 'package:chifood/bloc/restaurantListBloc/restaurantListBloc.dart';
import 'package:chifood/bloc/selectionBloc/selectionBloc.dart';
import 'package:chifood/ui/pages/home.dart';
import 'package:chifood/ui/pages/mapSearch.dart';
import 'package:chifood/ui/pages/order.dart';
import 'package:chifood/ui/pages/orderConfirmation.dart';
import 'package:chifood/ui/pages/orderFinish.dart';
import 'package:chifood/ui/pages/restaurantScreen.dart';
import 'package:chifood/ui/pages/searchPage.dart';
import 'package:chifood/ui/pages/sign.dart';
import 'package:chifood/ui/pages/signUp.dart';
import 'package:chifood/ui/pages/splash.dart';
import 'package:chifood/ui/widgets/customDrawer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oktoast/oktoast.dart';

import 'bloc/implementation/FilterRestaurantImplement.dart';

//void main(){
//  WidgetsFlutterBinding.ensureInitialized();
//  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_){
//
//  });
//}
void main(){
  BlocSupervisor.delegate=MyBlocDelegate();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  FirebaseAuth _firebaseAuth;
  Firestore _firestore;
  FireAuthRepo _fireAuthRepo;
  SelectionImplement _selectionReop;
  RestaurantImplement _restaurantImplement;
  FilterRestaurant _filterRestaurantImp;
  Dio client;
  Dio yelpClient;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _firebaseAuth=FirebaseAuth.instance;
    _firestore=Firestore.instance;
    _fireAuthRepo=FireAuthRepo(_firebaseAuth,_firestore);
    client=getDio();
    yelpClient=getYelpDio();
    _selectionReop= SelectionImplement(client);
    _restaurantImplement=RestaurantImplement(client,yelpClient);
    _filterRestaurantImp=FilterRestaurant(client);
  }
  @override
  Widget build(BuildContext context) {
    return OKToast(
      animationCurve: Curves.easeIn,
      animationBuilder: Miui10AnimBuilder(),
      animationDuration: Duration(milliseconds: 200),
      duration: Duration(seconds: 3),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthenticationBloc>(
            create: (context){
              return AuthenticationBloc(_fireAuthRepo)..add(VerifyAuth());
            },
          ),
          BlocProvider<SelectionBloc>(
            create: (context){
              return SelectionBloc(selectionRepo: _selectionReop,AuthBloc: BlocProvider.of<AuthenticationBloc>(context));
            },
          ),
          BlocProvider<RestaurantBloc>(
            create: (context){
              return RestaurantBloc(_restaurantImplement);
            },
          ),
          BlocProvider<MenuBloc>(
            create: (context){
              return MenuBloc();
            },
          ),
          BlocProvider<OrderBloc>(
            create: (context){
              return OrderBloc();
            },
          ),
          BlocProvider<RestaurantListBloc>(
            create: (context){
              return RestaurantListBloc(_filterRestaurantImp);
            },
          )
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
              primaryColor:  Color(0xffffd31d)
          ),
          home: SplashPage(_fireAuthRepo),
          routes: <String,WidgetBuilder>{
            '/HomePage':(BuildContext ctx)=> HomePage(),
            '/OrderFinish':(BuildContext ctx)=>OrderFinish(),
            '/OrderConfirm':(BuildContext ctx)=>OrderConfirmation(),
            '/Order':(BuildContext ctx)=>CustomDrawer(),
            '/setUp':(BuildContext ctx)=>SignScreen(),
            '/SignUp':(BuildContext ctx)=>SignUpScreen(client),
            '/MapSearch':(BuildContext ctx)=>MapSample(),
            '/Restaurant':(BuildContext ctx)=>RestaurantScreen(),
            '/Search':(BuildContext ctx)=>CustomSearchPage(client)
          },
        ),
      ),
    );
  }
}


