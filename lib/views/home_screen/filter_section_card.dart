import 'package:flutter/material.dart';
import 'package:ostello/universal/tag_widget.dart';

class FilterSectionCard extends StatelessWidget {
  const FilterSectionCard({super.key, required this.name, required this.tags});
  final String name;
  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 9, horizontal: 14),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text(name,
              style:
                  const TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
          const SizedBox(height: 10),
          Wrap(
              spacing: 10,
              runSpacing: 3,
              children: List.generate(
                  tags.length, (index) => TagWidget(tagName: tags[index])))
        ]));
  }
}
