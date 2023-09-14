import 'package:flutter/material.dart';
import 'package:ostello/constants.dart';
import 'package:ostello/views/home_screen/category_widget.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
              categoryList.length,
              (index) => CategoryWidget(
                  imgURL: categoryList[index].imgURL,
                  name: categoryList[index].name))));
}
