import 'package:flutter/material.dart';

class CategoryImageWidget extends StatelessWidget {
  const CategoryImageWidget({
    super.key,
    required this.imgURL,
  });

  final String imgURL;

  @override
  Widget build(BuildContext context) => Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain, image: AssetImage(imgURL))))));
}
