import 'package:flutter/material.dart';
import 'package:ostello/views/address_screen/address_card_widget.dart';

class SavedAddresses extends StatelessWidget {
  const SavedAddresses({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: SingleChildScrollView(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                                  const Text(
                                    "Saved Addresses",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff7B7B7B),
                                        fontSize: 16),
                                  ),
                                  const SizedBox(height: 12),
                                ] +
                                List.generate(
                                    6, (index) => const AddressCardWidget()),
                          )))
                ])));
  }
}
