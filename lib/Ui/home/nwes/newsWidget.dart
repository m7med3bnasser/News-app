import 'package:flutter/material.dart';
import 'package:news_app/model/news.dart';

class NewsWidget extends StatelessWidget {
  News news;

  NewsWidget(this.news, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(
                news.image,
                width: double.infinity,
                height: 220,
                fit: BoxFit.fill,
              )),
          Text(
            news.author,
            textAlign: TextAlign.start,
          ),
          Text(
            news.title,
            textAlign: TextAlign.start,style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          ),
          Text(
            news.date,
            textAlign: TextAlign.end,
          ),
        ],
      ),
    );
  }
}
