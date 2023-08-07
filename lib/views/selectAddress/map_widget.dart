// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../constants/imageConstants.dart';

class MapWidget extends StatefulWidget {
  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  // const MapWidget({super.key});
  Completer<GoogleMapController> _controller = Completer();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var maxWidth = constraints.biggest.width;
        var maxHeight = constraints.biggest.height;
        return Stack(
          children: [
            SizedBox(
              height: maxHeight,
              width: maxWidth,
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: LatLng(17.3850, 78.4867),
                  zoom: 15,
                ),
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
                onCameraMove: (CameraPosition newPosition) {
                  log(newPosition.target.latitude.toString());
                  
                  // print(newPosition.target.toJson());
                  // widget.value = newPosition.target;
                },
                onTap: (value) {
                  print(value.latitude);
                },
                mapType: MapType.normal,
                myLocationButtonEnabled: true,
                myLocationEnabled: false,
                zoomGesturesEnabled: true,
                padding: const EdgeInsets.all(0),
                buildingsEnabled: true,
                cameraTargetBounds: CameraTargetBounds.unbounded,
                compassEnabled: true,
                indoorViewEnabled: false,
                mapToolbarEnabled: true,
                minMaxZoomPreference: MinMaxZoomPreference.unbounded,
                rotateGesturesEnabled: true,
                scrollGesturesEnabled: true,
                tiltGesturesEnabled: true,
                trafficEnabled: false,
              ),
            ),
            Positioned(
              bottom: maxHeight / 2,
              right: (maxWidth - 30) / 2,
              child: Image.asset(
                ImageIcons.MAP_PIN,
                height: 30,
              ),
            ),
          ],
        );
      },
    );
  }
}
