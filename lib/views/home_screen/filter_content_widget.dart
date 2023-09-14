import 'package:flutter/material.dart';
import 'package:ostello/constants.dart';
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
                  child: const Text("Filters",
                      style: TextStyle(
                          fontWeight: FontWeight.w800, fontSize: 22))),
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
              Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 18.0, horizontal: 16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text("Clear Filters")),
                        const SizedBox(width: 10),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {},
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: const Color(0xff7D23E0),
                            child: const Text("Apply"),
                          ),
                        )
                      ]))
            ]));
  }
}
