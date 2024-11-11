import 'package:all_projects/Providers/news_provider.dart';
import 'package:all_projects/Widgets/custom_news.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News",style: TextStyle(fontSize: 25,color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Consumer(
          builder: (BuildContext context,NewsProvider value, Widget? child) {
            final news = value.newsData;
            if(news == null)
            {
              value.getNews();
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            else
            {
              return ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(height: 20,),
                itemCount: news.news.length,
                itemBuilder: (context, index) {
                  return CustomNews(
                      img: news.news[index]["img"],
                      title: news.news[index]["title"],
                      description: news.news[index]["description"]
                  );
                },
              );
            }
          }
        ),
      ),
    );
  }
}
