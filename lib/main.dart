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
        child: Image.network("https://miro.medium.com/max/2000/1*PCKC8Ufml-wvb9Vjj3aaWw.jpeg", height: 250, width: 250,),
      ),
      floatingActionButton: FloatingActionButton(
        hoverColor: Colors.green,
        backgroundColor: Colors.amber,
        child: Text("+"),
        onPressed: () {
          print("Hello");
        },
      ),
    );
  }
}
