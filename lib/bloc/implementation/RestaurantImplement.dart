
import 'package:chifood/bloc/base/baseRestaurant.dart';
import 'package:chifood/config.dart';
import 'package:chifood/model/dailyMenu.dart';
import 'package:chifood/model/restaurants.dart';
import 'package:chifood/model/review.dart';
import 'package:chifood/model/serializer.dart';
import 'package:chifood/model/yelpBusiness.dart';
import 'package:chifood/model/yelpReview.dart';
import 'package:dio/dio.dart';

class RestaurantImplement extends BaseRestaurant {
  final Dio client;
  final Dio yelpClient;


  RestaurantImplement(this.client,this.yelpClient);

  @override
  Future<DailyMenu> fetchDailyMenu({String res_id}) async {
    final Response res= await client.get<Response>('$url$RESTAURANT',queryParameters: <String,dynamic>{'res_id':res_id});
    return res.data;
  }

  @override
  Future<Restaurants> fetchRestaurant({String res_id}) async {


    final Response res= await client.get<Response>('$url$RESTAURANT',queryParameters:<String,dynamic>{'res_id':res_id} );
    return standardSerializers.deserializeWith(Restaurants.serializer, res.data);
  }

  @override
  Future<List<Review>> fetchReviews({int start=5, int count=20, String res_id}) async {
   final  Response res= await client.get<Response>('$url$REVIEWS',queryParameters:<String,dynamic>{'start':start,'count':count,'res_id':res_id});
    return res.data['user_reviews'].map<Review>((Map<String,dynamic>each){
        return standardSerializers.deserializeWith(Review.serializer, each['review']);
    }).toList();
  }

  @override
  Future<YelpBusiness> getYelpBusiness({String term, String location, String locale, String latitude, String longitude}) async{
    Response res=await yelpClient.get<Response>('https://api.yelp.com/v3/businesses/search',queryParameters: <String,dynamic>{
      'term':term,'location':location,'latitude':latitude,'longitude':longitude
    });
    return standardSerializers.deserializeWith(YelpBusiness.serializer, res.data['businesses'][0]);
  }

  @override
  Future<List<YelpReview>> getYelpBusinessReview({String id})async {
    Response res=await yelpClient.get<Response>('https://api.yelp.com/v3/businesses/$id/reviews');
    return res.data['reviews'].map<YelpReview>((Map<String,dynamic> each){
      return standardSerializers.deserializeWith(YelpReview.serializer, each);
    }).toList();
  }


}