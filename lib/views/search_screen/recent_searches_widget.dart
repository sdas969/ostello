import 'package:flutter/material.dart';
import 'package:ostello/constants.dart';
import 'package:ostello/universal/custom_chip_widget.dart';

class RecentSearchesWidget extends StatelessWidget {
  const RecentSearchesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Recent Searches",
                      style: TextStyle(
                          color: Color(0xff676666),
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                  SizedBox(width: 8),
                  Icon(Icons.history, size: 20, color: Color(0xff676666))
                ],
              ),
              const SizedBox(height: 18),
              Wrap(
                  spacing: 11,
                  runSpacing: 11,
                  children: List.generate(
                      recentSearches.length,
                      (index) =>
                          CustomChipWidget(label: recentSearches[index])))
            ]));
  }
}
