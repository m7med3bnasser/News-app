import 'package:flutter/material.dart';
import 'package:news_app/Ui/home/nwes/newsWidget.dart';

import '../../../model/news.dart';
import '../../../model/source.dart';

class NewsListWidget extends StatelessWidget {
  Source source;

  NewsListWidget(this.source, {super.key});

  List<News>newsList = [
    News(10, """""Why are football's biggest clubs starting a new 
  tournament?""", "assets/images/newsImage.png", "Mon 11 oct", "BBC News"),
    News(10, """""Why are football's biggest clubs starting a new 
  tournament?""", "assets/images/newsImage.png", "Mon 11 oct", "BBC News"),
    News(10, """""Why are football's biggest clubs starting a new 
  tournament?""", "assets/images/newsImage.png", "Mon 11 oct", "BBC News"),
    News(10, """""Why are football's biggest clubs starting a new 
  tournament?""", "assets/images/newsImage.png", "Mon 11 oct", "BBC News"),
    News(10, """""Why are football's biggest clubs starting a new 
  tournament?""", "assets/images/newsImage.png", "Mon 11 oct", "BBC News"),
    News(10, """""Why are football's biggest clubs starting a new 
  tournament?""", "assets/images/newsImage.png", "Mon 11 oct", "BBC News"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return NewsWidget(newsList[index]);

    }, itemCount:newsList.length,);
  }
}
