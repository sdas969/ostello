import 'package:flutter/material.dart';

class TransparentButton extends StatelessWidget {
  const TransparentButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) => MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      onPressed: () {},
      child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(text,
              style: const TextStyle(
                  color: Color(0xff7D23E0),
                  fontSize: 16,
                  fontWeight: FontWeight.w600))));
}
