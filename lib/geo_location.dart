import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Location extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _Location();
  }
}

class _Location extends State<Location> {
  Future findLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
        timeLimit: Duration(seconds: 5));
    return position;
  }

  late GoogleMapController mapController;
  LatLng _center = LatLng(40, -122.677433);//Initialize
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
  bool locationFound = false;
  
  Widget build(BuildContext context) {
    return locationFound == false
        ? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: () async {
                    Position position = await findLocation();
                    setState(() {
                     _center = LatLng(position!.latitude, position!.longitude);
                      locationFound = true;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 60,
                        color: Color(0xfff60002),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Find My Location",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        : GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: _center,
        zoom: 11.0,
      ),
    );
  }
}