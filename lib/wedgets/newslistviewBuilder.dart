import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:prog_project/modules/articlemodel.dart';
import 'package:prog_project/surveces/News_Services.dart';
import 'package:prog_project/wedgets/news_listview.dart';

class Newslistviewbuilder extends StatefulWidget {
  const Newslistviewbuilder({super.key, required this.category});
final String category;

  @override
  State<Newslistviewbuilder> createState() => _NewslistviewbuilderState();
}

class _NewslistviewbuilderState extends State<Newslistviewbuilder> {
  var future;
  @override
  void initState() {
    super.initState();
future =  NewsServices(Dio()).GetTopHeadlines( category: widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Articlemodel>>(
      future: future,
    builder: (context,snapshot){
if (snapshot.hasData) {
  return NewsListview(
  articless: snapshot.data!,
  );
}else if(snapshot.hasError){
return const SliverToBoxAdapter(child: Text('oops there was an error try late'),);
}else{
 return const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator(),),);
}
    });
  }
}