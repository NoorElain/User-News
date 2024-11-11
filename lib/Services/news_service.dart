import 'package:all_projects/Models/news_model.dart';
import 'package:dio/dio.dart';

class NewsServices
{
  static Dio dio = Dio();
  static Future<NewsModel> fetchNews() async
  {
    String url = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=5ba0f58e53784c17955e7592de12e3b2";
    var response = await dio.get(url);
    return NewsModel.fromjson(response.data);
  }
}