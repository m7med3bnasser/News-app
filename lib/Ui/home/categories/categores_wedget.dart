import 'package:flutter/material.dart';
import 'package:news_app/Ui/home/categories/category.dart';

import 'category_item.dart';
typedef OnCategoryClick=void Function(Category category);
class CategoresWidget extends StatelessWidget {
  OnCategoryClick onCategoryClick;
  CategoresWidget(this.onCategoryClick ,{super.key});

  List<Category> categores = Category.getAllCategory();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            """Pick your category 
      of interest""",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 24,
              ),
              itemBuilder: (context, index) =>
                  InkWell(onTap:() {
                    onCategoryClick(categores[index]);
                  }
                      , child: CategoryItem(categores[index], index)),
              itemCount: categores.length,
            ),
          ),

        ],
      )
      ,
    );
  }
}
