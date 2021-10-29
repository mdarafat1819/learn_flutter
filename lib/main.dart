import 'dart:js';

import 'package:flutter/material.dart';

int main() {
  runApp(MaterialApp(title: "Flutter App", home: HomePage()));
  return 0;
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("App Bar"),
          centerTitle: true),
          body: Center(
        //child: Image.asset("assets/images/flutter.jpeg", height: 250, width: 250),
          child: Icon(Icons.alarm, size: 100),
      ),
      floatingActionButton: FloatingActionButton(
        hoverColor: Colors.green,
        backgroundColor: Colors.amber,
        child: Icon(Icons.message),
        onPressed: () {
          print("Hello");
        },
      ),
    );
  }
}
