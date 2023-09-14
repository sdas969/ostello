import 'package:flutter/material.dart';

class CustomChipWidget extends StatelessWidget {
  const CustomChipWidget(
      {super.key,
      required this.label,
      this.icon,
      this.onTap,
      this.fontSize = 14,
      this.textColor = const Color(0xffADADAD),
      this.borderWidth = 1,
      this.borderColor = const Color(0xffA6A5A5)});
  final String label;
  final IconData? icon;
  final Function()? onTap;
  final Color textColor;
  final Color borderColor;
  final double borderWidth;
  final double fontSize;

  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: borderColor, width: borderWidth),
              borderRadius: BorderRadius.circular(24)),
          child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Row(mainAxisSize: MainAxisSize.min, children: [
                if (icon != null)
                  Icon(icon, color: textColor, size: fontSize + 4),
                if (icon != null) const SizedBox(width: 5),
                Text(label,
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w500,
                        fontSize: fontSize))
              ]))));
}
