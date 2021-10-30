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
      body: Column(
        children: [ 
          Text("This is Column"),
          Image.asset("assets/images/flutter.jpeg", width: 200,height: 250,),
          
        ],
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
