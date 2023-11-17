import 'package:flutter/cupertino.dart';
import 'package:news_app/api/ApiManager.dart';
import 'package:news_app/model/sourcesResponse/Source.dart';

class CategoryDetailsViewModel extends ChangeNotifier {
  List<Source>? newsSourcesList;
  String? errorMessage;
  bool? showLoding ;

  getSources(String categoryId) async {
    showLoding =true;
    notifyListeners();
    var response = await ApiManager.getsources(categoryId);
    try {
      showLoding = null;
      if (response.status == 'error') {
      errorMessage= response.message;
    } else {
      newsSourcesList=response.sources;
    }}catch(e) {
      showLoding = null;

      errorMessage = e.toString();
    }
    notifyListeners();
  }
}
