import 'package:flutter/material.dart';

import './geo_location.dart';
int main() {
  runApp(MyApp());
  return 0;
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Learn Flutter",
      home: Scaffold(  
        appBar: AppBar(  
          title: Text("Learn Flutter"),
          centerTitle: true,
        ),
        body: Location(),
      ),
    );
  }
}