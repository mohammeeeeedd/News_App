import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prog_project/cubit/get_weather_cubit/get_weather_cubit.dart';
import 'package:prog_project/cubit/get_weather_cubit/get_weather_status.dart';
import 'package:prog_project/views/search_city.dart';
import 'package:prog_project/widgets/NoWeather.dart';
import 'package:prog_project/widgets/weatherinfobody.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        iconTheme: IconThemeData(
    color: Colors.black, 
  ),

        title: Text('WeatherApp',style: TextStyle(fontSize: 24,color: Colors.black),),
     actions: [
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.black,
              onPressed: () {
               Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return SearchCity(
            
            );
},),);
              },
            ),
          ],
      ),
body: BlocBuilder<GetWeatherCubit, WeatherStatus>(
  builder: (context, state) {
   if(state is WeatherInitialstate){
    return Noweather();
   }else if(state is weatherloadedstate){
return Weatherinfobody();
   }else{
  return  Text('oops there was an error');
   }
  },
),
      );
  }
  }