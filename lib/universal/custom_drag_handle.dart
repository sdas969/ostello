import 'package:flutter/material.dart';

class CustomDragHandle extends StatelessWidget {
  const CustomDragHandle({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Center(
      child: Container(
          height: 6.0, // Height of the drag handle area
          width: 40.0, // Width of the drag handle area
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          decoration: BoxDecoration(
              color: const Color(
                  0xffA0A0A0), // Set the background color of the drag handle
              borderRadius: BorderRadius.circular(3.0))));
}
