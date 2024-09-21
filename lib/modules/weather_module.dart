import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WeatherModule{
  final String cityname;
   final String date;
  final double temp;
  final double maxtemp;
  final double mintemp;
  final String? image;
  final String status;
 
WeatherModule({required this.cityname,required this.date,required this.temp,required this.maxtemp,
required this.mintemp, this.image,required this.status});


factory WeatherModule.fromjson(json){
 return WeatherModule(
    cityname: json['location']['name'],
     date: json['current']['last_updated'], 
   temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
    maxtemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
   mintemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
    image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
     status: json['forecast']['forecastday'][0]['day']['condition']['text'],
     
     );
}}