import 'package:flutter/material.dart';
import 'package:ostello/views/home_screen/category_image_widget.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.imgURL, required this.name});
  final String imgURL;
  final String name;

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: CategoryImageWidget(imgURL: imgURL)),
            Text(name,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 18))
          ]));
}
