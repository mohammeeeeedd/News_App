import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:prog_project/surveces/News_Services.dart';
import 'package:prog_project/views/homeview.dart';

void main() {

  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}