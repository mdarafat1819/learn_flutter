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
      appBar: AppBar(
          title: Text("App Bar"),
          centerTitle: true),
      body: Container(
          margin: EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
                labelText: "Name",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
                hintText: "Enter Your Full Name"),
            onChanged: (value) {
              print(value);
            },
          )),
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
