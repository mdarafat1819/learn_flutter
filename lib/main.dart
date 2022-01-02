import 'package:flutter/material.dart';

int main() {
  runApp(MyApp());
  return 0;
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Learn Flutter",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  Future<void> getData() async {
    final userId = await Future.delayed(Duration(seconds: 3), () {
      print("User ID1: 1");
      return 2;
    });

    Future.delayed(Duration(seconds: 2), () {
      print("User ID2: " + userId.toString());
    });

    print("Random Line");

    return;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn Flutter"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text("Click Me"),
            onPressed: () async {
              await getData();
              print("Second Function");
            },
          ),
        ),
      ),
    );
  }
}
