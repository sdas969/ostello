import 'package:flutter/material.dart';

class InstituteCardWidget extends StatelessWidget {
  const InstituteCardWidget(
      {super.key,
      required this.imgURL,
      required this.name,
      required this.tags});
  final String imgURL;
  final String name;
  final List<String> tags;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
        child: Card(
            color: Colors.white,
            elevation: 0,
            child: LayoutBuilder(
                builder: (context, constraints) => Row(children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: const Color(0xffF9F3FF),
                            borderRadius: BorderRadius.circular(6),
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage(imgURL))),
                      ),
                      const SizedBox(width: 14),
                      Expanded(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Text(
                              name,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                            Text(tags.join(" . "),
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    color: Color(0xff414141),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12))
                          ]))
                    ]))),
      );
}
