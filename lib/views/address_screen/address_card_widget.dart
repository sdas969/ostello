import 'package:flutter/material.dart';

class AddressCardWidget extends StatelessWidget {
  const AddressCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.symmetric(vertical: 7.0),
        elevation: 0,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 12),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 6,
                    children: [
                      Icon(
                        Icons.navigation,
                        color: Color(0xff7B7B7B),
                      ),
                      Text(
                        "Me",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                      CircleAvatar(
                        radius: 2,
                        backgroundColor: Color(0xff7B7B7B),
                      ),
                      Text(
                        "1m",
                        style: TextStyle(
                            color: Color(0xff7B7B7B),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  const SizedBox(height: 11),
                  const Text(
                    "556, 8th floor, 2nd block, 555, Suncity Apartment, Gurgaon, Sector -56",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff7B7B7B),
                        fontWeight: FontWeight.w500),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    IconButton.outlined(
                        color: const Color(0xff7B7B7B),
                        onPressed: () {},
                        icon: const Icon(Icons.more_horiz)),
                    IconButton.outlined(
                        color: const Color(0xff7B7B7B),
                        onPressed: () {},
                        icon: const Icon(Icons.share))
                  ])
                ])));
  }
}
