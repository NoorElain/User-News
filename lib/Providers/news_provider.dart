import 'package:all_projects/Models/news_model.dart';
import 'package:all_projects/Services/news_service.dart';
import 'package:flutter/cupertino.dart';

class NewsProvider extends ChangeNotifier
{
  NewsModel? newsData;
  getNews() async{
    newsData = await NewsServices.fetchNews();
    notifyListeners();
  }
}