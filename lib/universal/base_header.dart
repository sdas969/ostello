import 'package:flutter/material.dart';

class BaseHeader extends StatelessWidget {
  const BaseHeader({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) => Container(
      color: const Color(0xff7D23E0),
      child: SafeArea(
          child: Padding(
              padding: const EdgeInsets.only(
                  left: 12.0, right: 12, bottom: 17, top: 20),
              child: child)));
}
