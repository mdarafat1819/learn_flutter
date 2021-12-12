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
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 15/2,
            child: Container(
              alignment: Alignment.center,
              color: Colors.red,
              child: Text("Example of AspectRatio Widget"),
            ),
            ),
            AspectRatio(
            aspectRatio: 15/4,
            child: Container(
            alignment: Alignment.center,
            color: Colors.greenAccent,
            child: Text("Example of AspectRatio Widget"),
            ),
            ),
            FittedBox(
              child: Row(
                children: [
                  Image.asset('assets/images/flutter.jpeg'),
                  Container(
                    padding: EdgeInsets.only(right: 39, left: 30),
                    child: Text("This is Test", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),)
                    ),
                  Container(
                    padding: EdgeInsets.only(right: 39, left: 30),
                    child: Text("This is Test", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),)
                    ),
                  Container(
                    padding: EdgeInsets.only(right: 39, left: 30),
                    child: Text("This is Test", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),)
                    ),
                ],
              ),
              fit:BoxFit.cover,
            ),
        ],
        ),
    );
  }
}
