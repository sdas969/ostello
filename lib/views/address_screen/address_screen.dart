import 'package:flutter/material.dart';
import 'package:ostello/universal/base_header.dart';
import 'package:ostello/views/address_screen/bottom_sheet_content.dart';
import 'package:ostello/universal/custom_divider.dart';
import 'package:ostello/views/address_screen/location_header_inner_content_widget.dart';
import 'package:ostello/views/address_screen/saved_addresses_component.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F3FF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const BaseHeader(child: LocationHeaderInnerContentWidget()),
          const ListTile(
            textColor: Color(0xff7D23E0),
            iconColor: Color(0xff7D23E0),
            leading: Icon(Icons.navigation_rounded),
            title: Text("Use my current Location",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16)),
          ),
          ListTile(
            onTap: () => showModalBottomSheet(
                useSafeArea: true,
                showDragHandle: true,
                isScrollControlled: true,
                context: context,
                builder: (context) => AddressBottomSheet()),
            textColor: const Color(0xff7D23E0),
            iconColor: const Color(0xff7D23E0),
            leading: const Icon(Icons.add),
            title: const Text("Add new address",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16)),
          ),
          const CustomDivider(),
          const SavedAddresses()
        ],
      ),
    );
  }
}
