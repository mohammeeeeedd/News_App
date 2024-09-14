import 'package:flutter/material.dart';
import 'package:prog_project/wedgets/categorycard.dart';
import 'package:prog_project/modules/category.module.dart';
class Categorylistview extends StatelessWidget {
  const Categorylistview({super.key});
final List<Category_module> category= const[
  Category_module(Image: 'assets/business.avif', name: 'Business'),
  Category_module(Image: 'assets/entertaiment.avif', name: 'Entertainment',),
  Category_module(Image: 'assets/general.avif', name: 'General'),
  Category_module(Image: 'assets/health.avif', name: 'Health'),
  Category_module(Image: 'assets/science.avif', name: 'science'),
  Category_module(Image: 'assets/sports.avif', name: 'Sports'),
  Category_module(Image: 'assets/technology.jpeg', name: 'Technology'),
];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
         height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (context,index)
        {
          return Categorycard(
            categeres: category[index],
          );
        }
        ),
      );
  }
}