import 'package:flutter/material.dart';
import 'package:ostello/constants.dart';
import 'package:ostello/universal/base_header.dart';
import 'package:ostello/universal/custom_divider.dart';
import 'package:ostello/views/search_screen/institute_card_widget.dart';
import 'package:ostello/views/search_screen/institute_header_content.dart';
import 'package:ostello/views/search_screen/recent_searches_widget.dart';
import 'package:ostello/views/search_screen/top_searches_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
          body:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const BaseHeader(child: InstituteHeaderContent()),
        Expanded(
            child: SingleChildScrollView(
                child: Column(
                    children: List<Widget>.generate(
                            instituteList.length,
                            (index) => InstituteCardWidget(
                                  imgURL: instituteList[index].imgURL,
                                  name: instituteList[index].name,
                                  tags: instituteList[index].tags,
                                )) +
                        [
                          if (instituteList.isNotEmpty) const CustomDivider(),
                          const RecentSearchesWidget(),
                          const CustomDivider(),
                          const TopSearchesWidget()
                        ])))
      ]));
}
