import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late GoogleMapController mapController;
  late String searchAdd;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: onMapCreated,
            options: GoogleMapOptions(
              cameraPosition: CameraPosition(
                target: LatLng(32.815586, 36.404893),
                zoom: 10,
              ),
            ),
          )
        ],
      ),
    );
  }

  void onMapCreated(controller) {
    setState(() {
      mapController = controller;
    });
  }
}
