import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: () {},
      child: const CircleAvatar(
          backgroundImage: AssetImage("assets/images/profile.png")));
}
