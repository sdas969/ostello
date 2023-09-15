import 'package:flutter/material.dart';
import 'package:ostello/universal/custom_header_text_field.dart';
import 'package:ostello/views/home_screen/category_list_widget.dart';
import 'package:ostello/views/search_screen/location_profile_widget.dart';
import 'package:ostello/views/search_screen/search_screen.dart';

class HomeScreenHeaderContent extends StatelessWidget {
  const HomeScreenHeaderContent({super.key});

  @override
  Widget build(BuildContext context) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const LocationProfileWidget(),
            const SizedBox(height: 18),
            CustomHeaderTextField(
              hint: "Search for coaching, exams",
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SearchScreen())),
            ),
            const CategoryListWidget()
          ]);
}
