
import 'package:chifood/bloc/base/baseRestaurant.dart';
import 'package:chifood/config.dart';
import 'package:chifood/model/dailyMenu.dart';
import 'package:chifood/model/restaurants.dart';
import 'package:chifood/model/review.dart';
import 'package:chifood/model/serializer.dart';
import 'package:dio/dio.dart';

class RestaurantImplement extends BaseRestaurant {
  Dio client;

  RestaurantImplement(this.client);

  @override
  Future<DailyMenu> fetchDailyMenu({String res_id}) async {
    Response res= await client.get('$url$RESTAURANT',queryParameters: {"res_id":res_id});
    return res.data;
  }

  @override
  Future<Restaurants> fetchRestaurant({String res_id}) async {
    // TODO: implement fetchRestaurant

    Response res= await client.get('$url$RESTAURANT',queryParameters: {"res_id":res_id});
    return standardSerializers.deserializeWith(Restaurants.serializer, res.data);
  }

  @override
  Future<List<Review>> fetchReviews({int start=5, int count=20, String res_id}) async {
    Response res= await client.get('$url$REVIEWS',queryParameters:{'start':start,'count':count,'res_id':res_id});
    return res.data['user_reviews'].map<Review>((each){
        return standardSerializers.deserializeWith(Review.serializer, each['review']);
    }).toList();
  }

}