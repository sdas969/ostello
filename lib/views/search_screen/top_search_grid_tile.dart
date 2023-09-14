import 'package:flutter/material.dart';

class TopSerachGridTile extends StatelessWidget {
  const TopSerachGridTile({super.key, required this.imgURL});
  final String imgURL;

  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: () {},
      child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.contain, image: AssetImage(imgURL)),
              border: Border.all(
                  width: 1.064,
                  color: const Color(0xff7D23E0).withOpacity(0.11)),
              borderRadius: BorderRadius.circular(10.641))));
}
