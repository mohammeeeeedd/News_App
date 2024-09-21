import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:prog_project/modules/weather_module.dart';

class WeatherSurvice{
  final  Dio dio;
final  String baseurl='https://api.weatherapi.com/v1';
final String apikey = 'df972642ab5f463289f234802241609';
    WeatherSurvice(this.dio);
  Future<WeatherModule>  getCurrentWeather({required String cityname})async{
try {
  Response response = await dio.get('$baseurl/forecast.json?key=$apikey&q=$cityname&days=10');
     WeatherModule weatherModule=WeatherModule.fromjson(response.data);
     return weatherModule;
     
}
 on DioException catch (e) {
  final String errormessage = e.response?.data['error']['message'] ?? 
  'oops there was an error,try later';

  throw Exception(errormessage);
}catch(e){
  log(e.toString());
throw Exception('oops there was an error,try later');
}
    }
}