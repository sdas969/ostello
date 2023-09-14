import 'package:flutter/material.dart';
import 'package:ostello/universal/base_header.dart';
import 'package:ostello/views/home_screen/filter_widget.dart';
import 'package:ostello/views/home_screen/home_screen_header_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      BaseHeader(child: HomeScreenHeaderContent()),
      Expanded(
          child:
              SingleChildScrollView(child: Column(children: [FilterWidget()])))
    ]));
  }
}
