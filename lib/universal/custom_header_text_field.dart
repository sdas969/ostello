import 'package:flutter/material.dart';
import 'package:ostello/universal/text_field_suffix_buttons.dart';

class CustomHeaderTextField extends StatelessWidget {
  const CustomHeaderTextField({super.key, this.hint = '', this.onTap});
  final String hint;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) => TextField(
      onTap: onTap,
      decoration: InputDecoration(
          hintText: hint,
          suffixIcon: const TextFieldSuffixButtons(),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          prefixIcon: const Icon(Icons.search),
          fillColor: Colors.white,
          filled: true));
}
