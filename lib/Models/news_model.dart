class NewsModel
{
  List news;
  NewsModel({required this.news});

  factory NewsModel.fromjson(Map<String, dynamic> json)
  {
    List<dynamic> fullData;
    fullData = json["articles"].map(
        (news){
          return{
            "title" : news["title"],
            "description" : news["description"],
            "img" : news["urlToImage"]
          };
        }
    ).toList();
    return NewsModel(news: fullData);
  }
}