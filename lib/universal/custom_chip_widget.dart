import 'package:flutter/material.dart';

class CustomChipWidget extends StatelessWidget {
  const CustomChipWidget({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: () {},
      child: Chip(
          label: Text(label,
              style: const TextStyle(
                  color: Color(0xffADADAD),
                  fontWeight: FontWeight.w500,
                  fontSize: 14)),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
              side: const BorderSide(color: Color(0xffA6A5A5)))));
}
