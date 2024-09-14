import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:prog_project/modules/articlemodel.dart';
import 'package:prog_project/surveces/News_Services.dart';
import 'package:prog_project/wedgets/newstile.dart';

class NewsListview extends StatelessWidget {
final  List<Articlemodel> articless;

  const NewsListview({super.key, required this.articless});
  

  @override
  Widget build(BuildContext context) {
    return  SliverList(delegate: SliverChildBuilderDelegate(
        childCount: articless.length,
        (context,index){
        return 
       Padding(
         padding: const EdgeInsets.only(bottom: 22),
         child: Newstile(
          articlemodel: articless[index],
         ),
       );
      }
      ),
    );

  }
}