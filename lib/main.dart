import 'package:flutter/material.dart';

int main() {

  runApp(
    MaterialApp(
      title: "Flutter App",
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text("App Bar"),
          centerTitle: true
        ),
        body: Text("This is body")
      )
    )
  );
  return 0;
}
