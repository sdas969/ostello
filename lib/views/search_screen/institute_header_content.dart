import 'package:flutter/material.dart';
import 'package:ostello/universal/custom_header_text_field.dart';
import 'package:ostello/views/search_screen/location_profile_widget.dart';

class InstituteHeaderContent extends StatelessWidget {
  const InstituteHeaderContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) => const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LocationProfileWidget(),
            SizedBox(height: 18),
            CustomHeaderTextField(hint: "Search for Institutes")
          ]);
}
