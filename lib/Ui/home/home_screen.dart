import 'package:flutter/material.dart';
import 'package:news_app/Ui/home/categories/categores_wedget.dart';
import 'package:news_app/Ui/home/categoryDetails/categoryDetails.dart';
import 'package:news_app/Ui/home/home_drawer.dart';
import 'package:news_app/Ui/home/setting/settings_widdget.dart';

import 'categories/category.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void initState() {
    super.initState();
    selectedWidget = CategoresWidget(OnCategoryItemClick);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage(
                "assets/images/pattern.png",
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
        drawer: HomeDrawer(onMenuItemClick),
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            SizedBox(
              width: 20,
            )
          ],
          title: Text("News App"),
        ),
        body: selectedWidget,
      ),
    );
  }

  late Widget selectedWidget;

  void onMenuItemClick(MenuItem item) {
    Navigator.pop(context);
    switch (item) {
      case MenuItem.categories:
        {
          selectedWidget = CategoresWidget(OnCategoryItemClick);
        }
      case MenuItem.settings:
        {
          selectedWidget = SettingsWidget();
        }
    }
    setState(() {});
  }

  void OnCategoryItemClick(Category category) {
    selectedWidget = CategoryDetailes(category);
    setState(() {});
  }
}
