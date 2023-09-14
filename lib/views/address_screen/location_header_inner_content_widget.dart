import 'package:flutter/material.dart';
import 'package:ostello/universal/custom_back_button.dart';
import 'package:ostello/universal/custom_header_text_field.dart';

class LocationHeaderInnerContentWidget extends StatelessWidget {
  const LocationHeaderInnerContentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) => const Column(children: [
        Row(children: [
          CustomBackButton(),
          SizedBox(width: 10),
          Text("Enter your area or neighbourhood name",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16))
        ]),
        SizedBox(height: 22),
        CustomHeaderTextField(hint: "Search for location")
      ]);
}
