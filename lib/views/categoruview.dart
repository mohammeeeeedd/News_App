import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:prog_project/wedgets/newslistviewBuilder.dart';

class Categoruview extends StatelessWidget {
  const Categoruview({super.key, required this.category});
final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
       slivers: [ Newslistviewbuilder(category: category),],
      ),
    );
  }
}