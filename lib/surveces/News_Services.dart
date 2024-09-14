import 'package:dio/dio.dart';
import 'package:prog_project/modules/articlemodel.dart';

class NewsServices{
  final Dio dio;
  NewsServices(this.dio);

  Future<List<Articlemodel>> GetTopHeadlines({required String category}) async {
    try {
  var response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=f850359d4e41432d8e5e35cd059e58e8&category=$category');
     Map<String, dynamic> jsondata = response.data ;
     List<dynamic> articles = jsondata['articles'];
     List<Articlemodel> articlelist = [];
     for (var article in articles) {
   Articlemodel articlemodel =Articlemodel(image: article[ "urlToImage"], 
   title: article["title"],
    subtitle: article["description"],
 
     );
   
    articlelist.add(articlemodel);
     }
     return articlelist;
}  catch (e) {
return [];
}
  }
}