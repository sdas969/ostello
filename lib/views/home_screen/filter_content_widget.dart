import 'package:flutter/material.dart';
import 'package:ostello/constants.dart';
import 'package:ostello/universal/colored_button.dart';
import 'package:ostello/universal/custom_drag_handle.dart';
import 'package:ostello/universal/transparent_button.dart';
import 'package:ostello/views/home_screen/filter_section_card.dart';

class FilterContent extends StatelessWidget {
  const FilterContent({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        minChildSize: 0.5,
        maxChildSize: 1,
        expand: false,
        builder: (context, controller) =>
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 26, vertical: 18),
                  color: Colors.white,
                  child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomDragHandle(),
                        Text("Filters",
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 22))
                      ])),
              Expanded(
                  child: SingleChildScrollView(
                      controller: controller,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: List.generate(
                              filterSectionList.length,
                              (index) => FilterSectionCard(
                                  name: filterSectionList[index].name,
                                  tags: filterSectionList[index].tagList))))),
              const Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TransparentButton(text: "Clear Filters"),
                        SizedBox(width: 10),
                        Expanded(child: ColoredButton(text: "Apply"))
                      ]))
            ]));
  }
}
