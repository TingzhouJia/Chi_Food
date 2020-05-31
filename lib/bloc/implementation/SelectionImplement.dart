

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:chifood/bloc/base/baseCategory.dart';
import 'package:chifood/model/category.dart';
import 'package:chifood/model/cuisine.dart';
import 'package:chifood/model/establishment.dart';
import 'package:chifood/model/geoLocation.dart';
import 'package:chifood/model/location.dart';
import 'package:chifood/model/locationDetail.dart';
import 'package:chifood/model/locationLocation.dart';
import 'package:chifood/model/popularity.dart';
import 'package:chifood/model/restaurants.dart';
import 'package:chifood/model/serializer.dart';
import 'package:dio/dio.dart';

import '../../config.dart';

class SelectionImplement extends BaseSelection{
  Dio client;

  SelectionImplement(this.client);

  @override
  Future<List<Category>> getCategories() async {
  final Response res= await client.get<dynamic>('$url$CATEGORY');
    return res.data['categories'].map<Category>((dynamic each){
        return standardSerializers.deserializeWith(Category.serializer, each['categories']);
    }).toList();
  }
  @override
  Future<GeoLocation> getGeoLocation({String lat,String lon}) async {

    //Response res=await client.get('$url$GEOLOCATION',queryParameters: {'lat':lat,'long':lon});
    Response res=await client.get<dynamic>('https://developers.zomato.com/api/v2.1/geocode?lat=$lat&lon=$lon');
    GeoLocation result=GeoLocation((a)=>a
        ..popularity=standardSerializers.deserializeWith(Popularity.serializer, res.data['popularity']).toBuilder()
        ..location=standardSerializers.deserializeWith(LocationLocation.serializer, res.data['location']).toBuilder()
        ..nearby_restaurants=ListBuilder(res.data['nearby_restaurants'].map<Restaurants>((dynamic each){
          return standardSerializers.deserializeWith(Restaurants.serializer, each['restaurant']);
        }).toList())
    );

    return result;
  }

  @override
  Future<List<Restaurants>> getLocationDetail({String entity_id,String entity_type}) async{
    Response res=await client.get<dynamic>('$url$LOCATIONDETAIL',queryParameters: <String,dynamic>{'entity_id':entity_id,'entity_type':entity_type});

    return res.data['best_rated_restaurant'].map<Restaurants>((dynamic each){
      return standardSerializers.deserializeWith(Restaurants.serializer, each['restaurant']);
    }).toList();

  }

  @override
  Future<List<Cuisine>> getCuisines({int city_id, String lat, String lon})async {
    Response res;
    if(lat!=null&&lon!=null){
      res= await client.get<dynamic>('$url$CUSINES',queryParameters: <String,dynamic>{"city_id":city_id,'lat':lat,'lon':lon});
    }else{
     res= await client.get<dynamic>('$url$CUSINES',queryParameters: <String,dynamic>{"city_id":city_id,});
    }

    return res.data['cuisines'].map<Cuisine>((dynamic each){
      return standardSerializers.deserializeWith(Cuisine.serializer, each['cuisine']);
    }).toList();
  }

  @override
  Future<List<Establishment>> getEstablishments({int city_id, String lat, String lon}) async {
    Response res= await client.get<dynamic>('$url$ESTABLISHMENT',queryParameters: <String,dynamic>{"city_id":city_id,'lat':lat,'lon':lon});
    List<Establishment> result= res.data['establishments'].map<Establishment>((dynamic each){
      Establishment content= standardSerializers.deserializeWith(Establishment.serializer, each['establishment']);
      return content;
    }).toList();
    return result;
  }


}