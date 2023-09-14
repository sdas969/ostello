import 'package:flutter/material.dart';
import 'package:ostello/universal/text_field_suffix_buttons.dart';

class CustomHeaderTextField extends StatelessWidget {
  const CustomHeaderTextField({super.key, this.hint = ''});
  final String hint;

  @override
  Widget build(BuildContext context) => TextField(
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
