import 'package:flutter/material.dart';
import 'package:prog_project/modules/category.module.dart';
import 'package:prog_project/views/categoruview.dart';


class Categorycard extends StatelessWidget {
  const Categorycard({super.key, required this.categeres});
final Category_module categeres;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return Categoruview(
            category: categeres.name,
           
          );
        },),);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Container(
            height: 100,
            width: 150,
          decoration: BoxDecoration(
           image:  DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(categeres.Image),
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(categeres.name,
            style: TextStyle(
              fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            ),
            ),
          ),
          ),
      ),
    ) ;
  }
}