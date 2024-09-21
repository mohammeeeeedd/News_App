import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prog_project/cubit/get_weather_cubit/get_weather_cubit.dart';
import 'package:prog_project/modules/weather_module.dart';
import 'package:prog_project/survices/weather_survice.dart';

class SearchCity extends StatelessWidget {
  const SearchCity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(
        iconTheme: IconThemeData(
    color: Colors.black, 
  ),    title: Text('Search a city',style: TextStyle(fontSize: 24,color: Colors.black),),  ),
body: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16),
  child: Center(
    child: TextField(
      onSubmitted: (value) async {
    
     var getweatherCubit =  BlocProvider.of<GetWeatherCubit>(context);
     getweatherCubit.getweatherr(cityname:value);
      Navigator.pop(context);
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 32,horizontal: 16),
        hintText: 'Enter a city',
        labelText: 'Search',
        suffixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.redAccent
          )
        )
      ),
    ),
  ),
),
    );
  }
}