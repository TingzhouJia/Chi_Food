

import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:chifood/config.dart';
import 'package:chifood/model/locationLocation.dart';
import 'package:chifood/model/serializer.dart';
import 'package:dio/dio.dart';

Future<LocationLocation> getGeoInfoFromZomato(Dio client,String query,double lat,double long) async{
  Response res= await client.get<Response>('$url/locations',queryParameters: <String,dynamic>{'query':query,'lat':lat,'lon':long});

  return standardSerializers.deserializeWith(LocationLocation.serializer,res.data['location_suggestions'][0]);
}