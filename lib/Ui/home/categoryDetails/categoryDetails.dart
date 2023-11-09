import 'package:flutter/material.dart';
import 'package:news_app/Ui/home/categoryDetails/sourcesTabsWidget.dart';

import '../../../model/source.dart';
import '../categories/category.dart';

class CategoryDetailes extends StatelessWidget {
  Category category;
   CategoryDetailes(this.category,{super.key});
   List<Source>sourcesList=[
     Source('bbc', "BBc"),
     Source('cnn', "CNN"),
     Source('Aljazira', "Aljazira"),

   ];

  @override
  Widget build(BuildContext context) {
    //call api
    return SourceTasbsWidget(sourcesList);
  }
}
