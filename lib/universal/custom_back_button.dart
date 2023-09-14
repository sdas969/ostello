import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) => IconButton.filled(
      onPressed: () => Navigator.pop(context),
      color: const Color(0xff7D23E0),
      style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.white)),
      icon: const Icon(Icons.keyboard_arrow_left));
}
