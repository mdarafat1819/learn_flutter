import 'package:flutter/material.dart';
import 'package:learn_flutter/main.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App Bar"), centerTitle: true),
      body: ElevatedButton(
        child: Text("Go Back"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
