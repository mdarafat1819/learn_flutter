import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

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

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(
            onPressed: () async {
              Position pos = await findLocation();
              setState(() {
                print(pos.toString());
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
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
