import 'package:flutter/material.dart';
import 'package:news_app/model/sourcesResponse/source.dart';

import '../../model/newsResponse/news.dart';

class DetailsScreen extends StatelessWidget {

  static const String routeName= "Details Screen";
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Source;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          SizedBox(
            width: 20,
          )
        ],
        title: Text("News App"),
      ),
      body: Column(
        children: [
          ClipRRect(
           // child: Image.network(),
          )
        ],
      ),
    );
  }
}
