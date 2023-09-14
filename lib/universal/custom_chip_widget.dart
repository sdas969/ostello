import 'package:flutter/material.dart';

class CustomChipWidget extends StatelessWidget {
  const CustomChipWidget({super.key, required this.label, this.icon});
  final String label;
  final IconData? icon;

  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: () {},
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffA6A5A5)),
              borderRadius: BorderRadius.circular(24)),
          child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Row(mainAxisSize: MainAxisSize.min, children: [
                if (icon != null)
                  const Icon(Icons.search, color: Color(0xffADADAD)),
                if (icon != null) const SizedBox(width: 1),
                Text(label,
                    style: const TextStyle(
                        color: Color(0xffADADAD),
                        fontWeight: FontWeight.w500,
                        fontSize: 14))
              ]))));
}
