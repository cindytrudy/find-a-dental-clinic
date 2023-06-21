import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  final String location;

  const MapScreen({required this.location, Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController _mapController;
  LatLng _initialCameraPosition = LatLng(0, 0);

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  void onMapCreated(GoogleMapController controller) {
    _mapController = controller;
    _updateCameraPosition();
  }

  void _updateCameraPosition() async {

    LatLng locationCoordinates = await convertLocationToCoordinates(widget.location);

    _mapController.animateCamera(CameraUpdate.newLatLng(locationCoordinates));
  }

  Future<LatLng> convertLocationToCoordinates(String location) async {

    final addresses = await GeocodingPlatform.instance.locationFromAddress('FGCJ+3M8, Thinkers Corner 400103, Enugu');
    if (addresses.isNotEmpty) {
      final firstAddress = addresses.first;
      return LatLng(firstAddress.latitude, firstAddress.longitude);
    }
    return LatLng(0, 0);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map'),
      ),
      body: GoogleMap(
        onMapCreated: onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _initialCameraPosition,
          zoom: 14.0,
        ),
      ),
    );
  }
}
