import 'package:chifood/configs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:place_picker/entities/location_result.dart';
import 'package:place_picker/widgets/place_picker.dart';
import 'package:search_map_place/search_map_place.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  bool lightTheme = true;
  Color currentColor = Colors.limeAccent;

  void changeColor(Color color) => setState(() => currentColor = color);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20.0),
                child:SearchMapPlaceWidget(
                  apiKey: API_GOOGLE,
                  onSelected: (place) async {

                    final geolocation = await place.geolocation;
//                final GoogleMapController controller = await _mapController.future;
////                controller.animateCamera(CameraUpdate.newLatLng(geolocation.coordinates));
////                controller.animateCamera(CameraUpdate.newLatLngBounds(geolocation.bounds, 0));
                    print(geolocation.fullJSON);
                  },
                ),
              ),
                RaisedButton(
                  elevation: 3.0,
                  onPressed: () {
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
                  child: const Text('Change me'),
                  color: currentColor,
                  textColor: useWhiteForeground(currentColor)
                      ? const Color(0xffffffff)
                      : const Color(0xff000000),
                ),
              ],
            ),
          ),
        ),
    );
  }
}

