import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prog_project/cubit/get_weather_cubit/get_weather_status.dart';
import 'package:prog_project/modules/weather_module.dart';
import 'package:prog_project/survices/weather_survice.dart';

class GetWeatherCubit extends Cubit<WeatherStatus> {
  GetWeatherCubit() : super(WeatherInitialstate());
  
  getweatherr({required String cityname}) async{
      try {
  WeatherModule weatherModule = await WeatherSurvice(Dio()).getCurrentWeather(cityname: cityname);
    emit(weatherloadedstate());
}  catch (e) {
  emit(failureweatherstate());
}
  }
}