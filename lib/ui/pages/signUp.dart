
import 'package:chifood/bloc/authBloc/AuthBloc.dart';
import 'package:chifood/bloc/authBloc/AuthEvent.dart';
import 'package:chifood/bloc/authBloc/AuthState.dart';
import 'package:chifood/configs.dart';
import 'package:chifood/model/baseUser.dart';
import 'package:chifood/model/locationLocation.dart';
import 'package:chifood/service/apiService.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:oktoast/oktoast.dart';

import '../../config.dart';

class SignUpScreen extends StatefulWidget {

  SignUpScreen(this.client);
  final Dio client;



  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool lightTheme = true;
  Color currentColor = Colors.limeAccent;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  LocationLocation locationInfo;
  String primary;
  BaseUser user;

  void _checkAndSubmit(){
    if(FocusScope.of(context).hasFocus){
      FocusScope.of(context).unfocus();
    }
    if(!isPopulated||locationInfo==null){
        _showToast();
        return;
    }
    user=BaseUser((a)=>a  ..long=locationInfo.longitude ..lat=locationInfo.latitude ..username=_usernameController.text
    ..primaryLocation=primary
    ..cityId=locationInfo.city_id ..entityId=locationInfo.entity_id ..entityType=locationInfo.entity_type ..foodie_color=currentColor.value.toString()
    );

    print(user);
    BlocProvider.of<AuthenticationBloc>(context).add(SignUpEvent(userInfo: user,email: _emailController.text,password: _passwordController.text));

  }
  bool get isPopulated =>
      _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty&&_usernameController.text.isNotEmpty;
  PickResult selectedPlace;

  void changeColor(Color color) {
    setState(() => currentColor = color);
    Navigator.pop(context);
  }

  void _showToast(){
    showToast('missing fields',duration: const Duration(milliseconds: 1500),
      position: ToastPosition.center,
      backgroundColor: Colors.redAccent.withOpacity(0.8),
      radius: 3.0,
      textStyle: const TextStyle(fontSize: 30.0),);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc,AuthenticationState>(
      listener: (BuildContext context,AuthenticationState state){
        if(state is Authenticated){
          Navigator.of(context).popAndPushNamed('/HomePage');
        }else if(state is Authenticating){
          showToast('loading',duration: const Duration(seconds: 2),position: ToastPosition.center);
        }
      },
      child: Scaffold(
        body: GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: SafeArea(
              top: false,
              bottom: false,
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    '${asset}signin.jpeg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),

                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(30.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0))),
                      //height: MediaQuery.of(context).size.height * 0.7,
                      child: SingleChildScrollView(
                        reverse: true,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  padding:const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                                  decoration:BoxDecoration(
                                      borderRadius: const BorderRadius.all( Radius.circular(15.0)),
                                      border: Border.all(color: Theme.of(context).primaryColor)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'Set Your Favorite Color:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 17.0),
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          width: 30,
                                          height: 30,

                                          decoration: BoxDecoration(
                                              color: currentColor,
                                              shape: BoxShape.circle),
                                        ),
                                        onTap: () {
                                          showDialog<dynamic>(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                title:const Text('Select a color'),
                                                content: SingleChildScrollView(
                                                  child: BlockPicker(
                                                    pickerColor: currentColor,
                                                    onColorChanged: changeColor,
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20,),
                                GestureDetector(
                                  onTap: () => Navigator.push<dynamic>(
                                    context,
                                    MaterialPageRoute<dynamic>(
                                      builder: (BuildContext context) {
                                        return PlacePicker(
                                          apiKey: API_GOOGLE,
                                          initialPosition:
                                          selectedPlace!=null?LatLng(selectedPlace.geometry.location.lat,selectedPlace.geometry.location.lng): LatLng(-33.8567844, 151.213108),
                                          useCurrentLocation: true,
                                          //usePlaceDetailSearch: true,
                                          onPlacePicked: (result) async {
                                            selectedPlace = result;
                                            Navigator.of(context).pop();
                                            primary=selectedPlace.formattedAddress;
                                            locationInfo=await getGeoInfoFromZomato(widget.client, result.formattedAddress, result.geometry.location.lat, result.geometry.location.lng);
                                            setState(() {});
                                          },
                                          //forceSearchOnZoomChanged: true,
                                          //automaticallyImplyAppBarLeading: false,
                                          autocompleteLanguage: "en",
                                          region: 'ca',
                                        );
                                      },
                                    ),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Theme.of(context).primaryColor),
                                        borderRadius: BorderRadius.all(Radius.circular(15.0))
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 5.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(Icons.location_on),
                                        SizedBox(width: 10,),
                                        ConstrainedBox(
                                            constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width*0.7),
                                            child: Text(
                                              selectedPlace == null
                                                  ? "Input your deliver address"
                                                  : selectedPlace.formattedAddress ?? "",
                                              overflow: TextOverflow.ellipsis,
                                              softWrap: true,
                                            )),
                                      ],
                                    ),
                                  ),
                                ),],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Form(
                              autovalidate: true,
                              child: Column(
                                children: <Widget>[
                                  TextFormField(
                                    controller: _usernameController,
                                    validator: RequiredValidator(errorText: 'need username'),
                                    decoration: InputDecoration(

                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15), //边角为30
                                        ),
                                        borderSide: BorderSide(
                                          color: Colors.amber, //边线颜色为黄色
                                          width: 2, //边线宽度为2
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.green, //边框颜色为绿色
                                            width: 2, //宽度为5
                                          )),
                                      labelText: "Username",
                                      // errorText: "errorText",
                                      hintText: "Input your username",
                                      prefixIcon: Icon(Icons.person_outline),
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  TextFormField(
                                    controller: _emailController,
                                    validator: EmailValidator(errorText: 'input valid email'),
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15), //边角为30
                                        ),
                                        borderSide: BorderSide(
                                          color: Colors.amber, //边线颜色为黄色
                                          width: 2, //边线宽度为2
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.green, //边框颜色为绿色
                                            width: 2, //宽度为5
                                          )),
                                      labelText: "Email",
                                      // errorText: "errorText",
                                      hintText: "Input your email",

                                      prefixIcon: Icon(Icons.email),
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  TextFormField(
                                    controller: _passwordController,
                                    obscureText: true,
                                    validator: RequiredValidator(errorText: 'Need password'),
                                    decoration: InputDecoration(

                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15), //边角为30
                                        ),
                                        borderSide: BorderSide(
                                          color: Colors.amber, //边线颜色为黄色
                                          width: 2, //边线宽度为2
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.green, //边框颜色为绿色
                                            width: 2, //宽度为5
                                          )),
                                      labelText: "Password",

                                      // errorText: "errorText",
                                      hintText: "Input your password",
                                      prefixIcon: Icon(Icons.lock_open),
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: ()=>Navigator.of(context).pop(),
                                  child: Container(
                                    decoration:BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                    padding:EdgeInsets.all(20.0),
                                    child: Icon(Icons.arrow_back),
                                  ),
                                ),
                                GestureDetector(
                                    onTap: _checkAndSubmit,
                                    child: Container(
                                      decoration:BoxDecoration(
                                        color: Theme.of(context).primaryColor,
                                        shape: BoxShape.circle,
                                      ),
                                      padding:EdgeInsets.all(20.0),
                                      child: Icon(Icons.arrow_forward),
                                    )
                                ),
                              ],
                            )


                          ],
                        ),
                      )
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
