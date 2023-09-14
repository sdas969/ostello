import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:ostello/universal/base_header.dart';
import 'package:ostello/universal/colored_button.dart';
import 'package:ostello/views/address_screen/bottom_sheet_content.dart';
import 'package:ostello/views/address_screen/choosen_location_widget.dart';
import 'package:ostello/views/address_screen/location_header_inner_content_widget.dart';

class LocationChooserScreen extends StatefulWidget {
  const LocationChooserScreen({super.key});

  @override
  State<LocationChooserScreen> createState() => _LocationChooserScreenState();
}

class _LocationChooserScreenState extends State<LocationChooserScreen> {
  final LatLng _initialcameraposition = const LatLng(20.5937, 78.9629);
  late Completer<GoogleMapController> _controller;
  final Location _location = Location();
  _onMapCreated(GoogleMapController cntlr) async {
    _controller.complete(cntlr);
    _location.onLocationChanged.listen((l) async {
      cntlr.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(
            target: LatLng(l.latitude ?? 0, l.longitude ?? 0), zoom: 15),
      ));
    });
  }

  @override
  void initState() {
    _controller = Completer<GoogleMapController>();
    super.initState();
  }

  @override
  void dispose() {
    _controller.future.then((value) => value.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      const BaseHeader(child: LocationHeaderInnerContentWidget()),
      Expanded(
          child: GoogleMap(
        initialCameraPosition: CameraPosition(target: _initialcameraposition),
        mapType: MapType.normal,
        onMapCreated: _onMapCreated,
        myLocationEnabled: true,
      )),
      Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const ChosenLocationWidget(),
                  const SizedBox(height: 9),
                  ColoredButton(
                    text: "Enter Complete Address",
                    onTap: () => showModalBottomSheet(
                        isScrollControlled: true,
                        useSafeArea: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30))),
                        enableDrag: true,
                        context: context,
                        builder: (context) => AddressBottomSheet()),
                  ),
                ],
              )))
    ]));
  }
}
