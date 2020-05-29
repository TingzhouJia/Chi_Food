import 'package:chifood/configs.dart';
import 'package:dio/dio.dart';

Dio getDio(){
  var dio =new Dio();
      dio.interceptors.add(InterceptorsWrapper(
      onRequest:(RequestOptions options) async {
    var customHeaders = {
      'content-type': 'application/json',
      'user-key':ZOMATO
    };
    options.headers.addAll(customHeaders);
  return options;
  },
      onResponse:(Response response) async {
        return response; // continue
      },
      onError: (DioError e) async {
        return  e;//continue
      }
  ));
     return dio;
}

Dio getYelpDio(){
  var dio =new Dio();
  dio.interceptors.add(InterceptorsWrapper(
      onRequest:(RequestOptions options) async {
        var customHeaders = {
          'Authorization':'Bearer $API_YELP'
        };
        options.headers.addAll(customHeaders);
        return options;
      },

  ));
  return dio;
}