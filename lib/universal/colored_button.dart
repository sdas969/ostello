import 'package:flutter/material.dart';

class ColoredButton extends StatelessWidget {
  const ColoredButton({super.key, required this.text, this.onTap});
  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) => MaterialButton(
      onPressed: onTap,
      disabledColor: const Color(0xff7D23E0),
      textColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: const Color(0xff7D23E0),
      child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(text,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w500))));
}
