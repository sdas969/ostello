import 'package:flutter/material.dart';
import 'package:ostello/constants.dart';
import 'package:ostello/views/search_screen/top_search_grid_tile.dart';

class TopSearchesWidget extends StatelessWidget {
  const TopSearchesWidget({super.key});

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const Text("Top Searches By Students & Parents",
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),
        LayoutBuilder(
            builder: (context, constraints) => GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: instituteList.length,
                itemBuilder: (context, index) =>
                    TopSerachGridTile(imgURL: instituteList[index].imgURL),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 15,
                    crossAxisCount: constraints.maxWidth > 700 ? 4 : 2,
                    childAspectRatio: 2)))
      ]));
}
