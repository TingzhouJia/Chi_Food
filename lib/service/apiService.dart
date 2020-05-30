

import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:chifood/config.dart';
import 'package:chifood/model/locationLocation.dart';
import 'package:chifood/model/serializer.dart';
import 'package:chifood/model/yelpBusiness.dart';
import 'package:chifood/model/yelpReview.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

Future<LocationLocation> getGeoInfoFromZomato(Dio client,String query,double lat,double long) async{
  Response res= await client.get<Response>('$url/locations',queryParameters: <String,dynamic>{'query':query,'lat':lat,'lon':long});

  return standardSerializers.deserializeWith(LocationLocation.serializer,res.data['location_suggestions'][0]);
}


Future<List<YelpReview>> getYelpBusinessReview({Dio client,String id}) async{
    Response res=await client.get<Response>('https://api.yelp.com/v3/businesses/$id/reviews');
    return res.data['reviews'].map<YelpReview>((Map<String,dynamic> each){
      return standardSerializers.deserializeWith(YelpReview.serializer, each);
    }).toList();
}

Future<YelpBusiness> getYelpBusiness({@required Dio client,String term,String location,String locale,double latitude,double longitude}) async {
  Response res=await client.get<Response>('https://api.yelp.com/v3/businesses/search',queryParameters: <String,dynamic>{
    'term':term,'location':location,'latitude':latitude,'longitude':longitude
  });
  return standardSerializers.deserializeWith(YelpBusiness.serializer, res.data['businesses'][0]);
}