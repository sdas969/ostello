import 'package:flutter/material.dart';

class CustomerServiceButton extends StatelessWidget {
  const CustomerServiceButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: () {},
      child: const CircleAvatar(
          backgroundImage: AssetImage("assets/images/cs.png"),
          radius: 12,
          backgroundColor: Color(0xff7F26E0)));
}
