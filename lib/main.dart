import 'package:flutter/material.dart';

int main() {
  runApp(MyApp());
  return 0;
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Bar",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
      ),
      body: Row(
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  height: 100,
                  width: 50,
                  color: Colors.green,
                ),
              Container(
                  height: 80,
                  width: 50,
                  color: Colors.red,
                ),
              Container(
                  height: 40,
                  width: 50,
                  color: Colors.grey,
                ),
              
              ],
             ),
          ),
        ],
        ),
    );
  }
}
