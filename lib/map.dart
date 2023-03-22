/*
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map extends StatefulWidget {
  @override
  _map createState() => _map();
}

class _map extends State<Map> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Google Maps Demo'),
        ),
        body: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(47.700001, -0.066666),
            zoom: 12,
          ),
          markers: Set<Marker>.of([
            Marker(
              markerId: MarkerId('La Flèche'),
              position: LatLng(47.700001, -0.066666),
              infoWindow: InfoWindow(
                title: 'La Flèche',
                snippet: 'Ville de La Flèche',
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

 */
