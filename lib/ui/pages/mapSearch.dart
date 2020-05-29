import 'dart:async';

import 'package:chifood/configs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:search_map_place/search_map_place.dart';

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _mapController = Completer();
  LatLng curLocation;
  static const CameraPosition _initialCamera = CameraPosition(
    target: LatLng(-20.3000, -40.2990),
    zoom: 14.0000,
  );
  final Set<Marker> _markers = {};
  Marker MyMarker(){
    return Marker(
      markerId: MarkerId('onlyId'),
      draggable: true,

      position: curLocation,
      onDragEnd: (value){

      }
    );
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          GoogleMap(
            myLocationButtonEnabled: false,
            myLocationEnabled: true,
            mapType: MapType.normal,
            initialCameraPosition: _initialCamera,
            onMapCreated: (GoogleMapController controller) {
              _mapController.complete(controller);
            },
            markers: _markers,
          ),
          Positioned(
            top: 60,
            left: MediaQuery.of(context).size.width * 0.05,
            child: Column(
              children: <Widget>[
                SearchMapPlaceWidget(
                  apiKey: API_GOOGLE,

                  onSelected: (place) async {
                    final geolocation = await place.geolocation;
                    final GoogleMapController controller = await _mapController.future;
                    setState(() {

                      curLocation=geolocation.coordinates;
                    });
                    print(geolocation.fullJSON);
                    _markers.add(MyMarker());
                    controller.animateCamera(CameraUpdate.newLatLng(geolocation.coordinates));
                    controller.animateCamera(CameraUpdate.newLatLngBounds(geolocation.bounds, 0));
                  },
                ),
                Container(

                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}