import 'package:flutter/material.dart';
import 'package:ostello/universal/custom_divider.dart';
import 'package:ostello/universal/custom_text_field.dart';

class AddressBottomSheet extends StatelessWidget {
  AddressBottomSheet({super.key});
  final DraggableScrollableController _controller =
      DraggableScrollableController();

  @override
  Widget build(BuildContext context) => DraggableScrollableSheet(
      controller: _controller,
      initialChildSize: 0.5,
      maxChildSize: 1,
      minChildSize: 0.1,
      expand: false,
      builder: (context, controller) =>
          Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 17),
                child: Text("Enter address details",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.w800))),
            const CustomDivider(),
            Expanded(
                child: SingleChildScrollView(
                    controller: controller,
                    child: const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 11),
                        child: Column(children: [
                          CustomTextField(label: "Address Line 1"),
                          CustomTextField(label: "Address line 2 (optional)"),
                          CustomTextField(label: "City"),
                          CustomTextField(label: "Pincode")
                        ])))),
            SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 18),
                    child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(14),
                            textStyle: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            foregroundColor: Colors.white,
                            backgroundColor: const Color(0xff7D23E0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: const Text("Save Address"))))
          ]));
}
