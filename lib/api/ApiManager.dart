import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/model/newsResponse/NewsResponse.dart';
import 'package:news_app/model/sourcesResponse/SourcesResponse.dart';


class ApiManager {
  static const baseUrl = "newsapi.org";
  static const apiKey = '370839a2f018414a9c3c5daba95813fb';

  static Future<SourcesResponse>getsources(String categoryId) async {
    //https://newsapi.org/v2/top-headlines/sources?apiKey=API_KEY
    var uri = Uri.https(baseUrl, 'v2/top-headlines/sources',
        {'apiKey': apiKey, "category": categoryId});
    var response = await http.get(uri);
    var json = jsonDecode(response.body);
    var sourcesResponse = SourcesResponse.fromJson(json);
    return sourcesResponse;

    //response.body
  }
  static Future<NewsResponse> getNews(String? sourceId)async{
    https://newsapi.org/v2/everything?q=bitcoin&apiKey=370839a2f018414a9c3c5daba95813fb
    var url = Uri.https(baseUrl,"v2/everything",{
      "apiKey":apiKey,
      "sources":sourceId
    });
    var response = await http.get(url);
    var json = jsonDecode(response.body);
    var newsResponse = NewsResponse.fromJson(json);
    return newsResponse;

  }
}
