import 'package:flutter/material.dart';
import '../main_drawer.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  static const routeName = '/map';
  @override
  _MapScreen createState() => _MapScreen();
}

class _MapScreen extends State<MapScreen> {

  List<Marker> allMarkers = [];
  @override
  void initState() {
    super.initState();
    allMarkers.add(Marker(
      markerId:  MarkerId('myMarker'),
      draggable: false,
      onTap:() {
        print('Marker Tapped');
      },
      position: LatLng(28.651264,-106.092448)
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ubicacion'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(28.651264,-106.092448),
              zoom:12.0,
            ),
            markers: Set.from(allMarkers),
          ),
        ),
      ),
    );
  }
}