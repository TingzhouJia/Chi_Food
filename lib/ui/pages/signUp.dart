import 'package:chifood/configs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';

import '../../config.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool lightTheme = true;
  Color currentColor = Colors.limeAccent;
  PickResult selectedPlace;

  void changeColor(Color color) {
    setState(() => currentColor = color);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0))),
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Set Your Favorite Color:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17.0),
                            ),
                            GestureDetector(
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: currentColor,
                                    shape: BoxShape.circle),
                              ),
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text('Select a color'),
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
                        SizedBox(height: 20,),
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return PlacePicker(
                                  apiKey: API_GOOGLE,
                                  initialPosition:
                                     selectedPlace!=null?LatLng(selectedPlace.geometry.location.lat,selectedPlace.geometry.location.lng): LatLng(-33.8567844, 151.213108),
                                  useCurrentLocation: true,
                                  //usePlaceDetailSearch: true,
                                  onPlacePicked: (result) {
                                    selectedPlace = result;
                                    Navigator.of(context).pop();
                                    setState(() {});
                                  },
                                  //forceSearchOnZoomChanged: true,
                                  //automaticallyImplyAppBarLeading: false,
                                  //autocompleteLanguage: "ko",
                                  //region: 'au',
                                  //selectInitialPosition: true,
                                  // selectedPlaceWidgetBuilder: (_, selectedPlace, state, isSearchBarFocused) {
                                  //   print("state: $state, isSearchBarFocused: $isSearchBarFocused");
                                  //   return isSearchBarFocused
                                  //       ? Container()
                                  //       : FloatingCard(
                                  //           bottomPosition: 0.0,    // MediaQuery.of(context) will cause rebuild. See MediaQuery document for the information.
                                  //           leftPosition: 0.0,
                                  //           rightPosition: 0.0,
                                  //           width: 500,
                                  //           borderRadius: BorderRadius.circular(12.0),
                                  //           child: state == SearchingState.Searching
                                  //               ? Center(child: CircularProgressIndicator())
                                  //               : RaisedButton(
                                  //                   child: Text("Pick Here"),
                                  //                   onPressed: () {
                                  //                     // IMPORTANT: You MUST manage selectedPlace data yourself as using this build will not invoke onPlacePicker as
                                  //                     //            this will override default 'Select here' Button.
                                  //                     print("do something with [selectedPlace] data");
                                  //                     Navigator.of(context).pop();
                                  //                   },
                                  //                 ),
                                  //         );
                                  // },
                                  // pinBuilder: (context, state) {
                                  //   if (state == PinState.Idle) {
                                  //     return Icon(Icons.favorite_border);
                                  //   } else {
                                  //     return Icon(Icons.favorite);
                                  //   }
                                  // },
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
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
