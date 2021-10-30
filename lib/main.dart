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
      appBar: AppBar(title: Text("App Bar"), centerTitle: true),
      body: Contact(),
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

class Contact extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _ContactState();
  }
}

class _ContactState extends State<Contact> {
  var str = "Guest";
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children:[ 
          TextField(
            maxLength: 30,
          decoration: InputDecoration(
              labelText: "Name",
              border: OutlineInputBorder(),
              hintText: "Enter Your Full Name",
              prefixIcon: Icon(Icons.account_circle),
              ),
            
          onChanged: (value) {
            setState(() {
              str = value;
            });
          },
        ),
        Text("Hello $str")
        ]
      ),
    );
  }
}
