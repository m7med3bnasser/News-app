import 'package:flutter/material.dart';
import 'package:news_app/Ui/home/categoryDetails/categoryDetailsviewModel.dart';
import 'package:news_app/Ui/home/categoryDetails/sourcesTabsWidget.dart';
import 'package:news_app/api/ApiManager.dart';
import 'package:provider/provider.dart';

import '../../../model/sourcesResponse/Source.dart';
import '../categories/category.dart';

class CategoryDetailes extends StatefulWidget {
  Category category;

  CategoryDetailes(this.category, {super.key});

  @override
  State<CategoryDetailes> createState() => _CategoryDetailesState();
}

class _CategoryDetailesState extends State<CategoryDetailes> {
  var viewModel = CategoryDetailsViewModel();

  @override
  void initState() {
    super.initState();
    viewModel.getSources(widget.category.id);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => viewModel,
      child: Consumer<CategoryDetailsViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.showLoding == true) {
            return Center(child: CircularProgressIndicator());
          } else if (viewModel.errorMessage! == null) {
            return Center(
              child: Column(
                children: [
                  Text(viewModel.errorMessage ?? ""),
                  ElevatedButton(onPressed: () {}, child: Text('Try Again'))
                ],
              ),
            );
          }
          var sourcesList = viewModel.newsSourcesList;
          return SourceTasbsWidget(sourcesList!);
        },
      ),
    );
    //call api
    // return FutureBuilder(future: ApiManager.getsources(category.id),
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       return Center(child: CircularProgressIndicator());
    //     }
    //     else if (snapshot.hasError || snapshot.data?.status == "error") {
    //       return Center(
    //         child: Column(
    //           children: [
    //             Text(snapshot.data?.message ?? snapshot.error.toString()),
    //             ElevatedButton(onPressed: () {
    //
    //             }, child: Text('Try Again'))
    //           ],
    //         ),
    //       );
    //     }
    //     var sourcesList=snapshot.data?.sources;
    //     return SourceTasbsWidget(sourcesList!);
    //   },);
  }
}
