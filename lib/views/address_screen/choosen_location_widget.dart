import 'package:flutter/material.dart';

class ChosenLocationWidget extends StatelessWidget {
  const ChosenLocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) =>
      const Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Icon(Icons.location_on, color: Color(0xff7D23E0)),
        SizedBox(width: 5),
        Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Sector-18, F-Block",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
          Text("Rohini",
              style: TextStyle(
                  color: Color(0xff7D23E0),
                  fontSize: 14,
                  fontWeight: FontWeight.w500))
        ]))
      ]);
}
