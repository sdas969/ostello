import 'package:flutter/material.dart';
import 'package:ostello/views/address_screen/address_screen.dart';
import 'package:ostello/universal/profile_widget.dart';

class LocationProfileWidget extends StatelessWidget {
  const LocationProfileWidget(
      {super.key,
      this.locationTextStyle = const TextStyle(
          color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
      this.addressTextStyle = const TextStyle(
          color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14)});
  final TextStyle locationTextStyle;
  final TextStyle addressTextStyle;

  @override
  Widget build(BuildContext context) =>
      Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddressScreen())),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.location_on,
                            size: 20, color: Colors.white),
                        Text("Gandhinagar", style: locationTextStyle),
                        const Icon(Icons.keyboard_arrow_down,
                            color: Colors.white)
                      ])),
              Text("Near SKM College, Gandhinagar, Ahmedabad",
                  style: addressTextStyle)
            ])),
        const ProfileWidget()
      ]);
}
