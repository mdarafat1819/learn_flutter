import 'package:flutter/material.dart';

int main() {
  runApp(MaterialApp(
      title: "Flutter App",
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("App Bar"), centerTitle: true
          ),
        body: Center(
          child: Text("Centered Text1"),
        ),
        floatingActionButton: FloatingActionButton(
          hoverColor: Colors.green,
          backgroundColor:Colors.amber,

          child: Text("+"),
          onPressed: () {
            print("Hello");
          },
        ),
      )));
  return 0;
}
