import 'package:flutter/material.dart';
import 'package:ostello/constants.dart';
import 'package:ostello/universal/custom_chip_widget.dart';
import 'package:ostello/views/home_screen/filter_content_widget.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 17.0),
        child: Row(
            children: List.generate(
                filterList.length,
                (index) => Padding(
                    padding: EdgeInsets.only(
                        left: index == 0 ? 12 : 6.0,
                        right: index == filterList.length - 1 ? 12 : 6),
                    child: CustomChipWidget(
                        onTap: () {
                          showModalBottomSheet(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(30))),
                              useSafeArea: true,
                              isScrollControlled: true,
                              context: context,
                              builder: (context) => const FilterContent());
                        },
                        borderWidth: 2,
                        textColor: const Color(0xff8C8C8C),
                        borderColor: const Color(0xff8C8C8C),
                        label: filterList[index].name,
                        icon: filterList[index].icon)))),
      ));
}
