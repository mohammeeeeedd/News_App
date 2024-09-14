import 'package:flutter/material.dart';
import 'package:prog_project/wedgets/categorycard.dart';
import 'package:prog_project/wedgets/categorylistview.dart';
import 'package:prog_project/wedgets/news_listview.dart';
import 'package:prog_project/wedgets/newslistviewBuilder.dart';
import 'package:prog_project/wedgets/newstile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        iconTheme: IconThemeData(
    color: Colors.black, 
  ),
        centerTitle: true,
        title:Row(
        mainAxisSize: MainAxisSize.min,
        children: [Text('News',style: TextStyle(fontSize: 24),),
      Text('Cloud',style: TextStyle(fontSize: 24,color: Colors.orange),),],),),

     body: Padding(padding: EdgeInsets.symmetric(horizontal: 16),
     child: CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
      SliverToBoxAdapter(child:Categorylistview()),
SliverToBoxAdapter(child:SizedBox(height: 32,)),
NewWidgetBuilder(),
     ],
     ),

     ),

      );
  }
}

class NewWidgetBuilder extends StatelessWidget {
  const NewWidgetBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Newslistviewbuilder(category: 'general');
  }
}