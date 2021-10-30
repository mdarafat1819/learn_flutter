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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("Yeasin Arafat"),
              subtitle: Text("Going to the moon"),
              leading: Icon(Icons.account_circle, color: Colors.blue),
              trailing: Icon(Icons.delete, color: Colors.red),
            ),
            ListTile(
              title: Text("Yeasin Arafat"),
              subtitle: Text("Going to the moon"),
              leading: Icon(Icons.account_circle, color: Colors.blue),
              trailing: Icon(Icons.delete, color: Colors.red),
            ),
            ListTile(
              title: Text("Yeasin Arafat"),
              subtitle: Text("Going to the moon"),
              leading: Icon(Icons.account_circle, color: Colors.blue),
              trailing: Icon(Icons.delete, color: Colors.red),
            ),
            ListTile(
              title: Text("Yeasin Arafat"),
              subtitle: Text("Going to the moon"),
              leading: Icon(Icons.account_circle, color: Colors.blue),
              trailing: Icon(Icons.delete, color: Colors.red),
            ),
            ListTile(
              title: Text("Yeasin Arafat"),
              subtitle: Text("Going to the moon"),
              leading: Icon(Icons.account_circle, color: Colors.blue),
              trailing: Icon(Icons.delete, color: Colors.red),
            ),
            ListTile(
              title: Text("Yeasin Arafat"),
              subtitle: Text("Going to the moon"),
              leading: Icon(Icons.account_circle, color: Colors.blue),
              trailing: Icon(Icons.delete, color: Colors.red),
            ),
            ListTile(
              title: Text("Yeasin Arafat"),
              subtitle: Text("Going to the moon"),
              leading: Icon(Icons.account_circle, color: Colors.blue),
              trailing: Icon(Icons.delete, color: Colors.red),
            ),
            ListTile(
              title: Text("Yeasin Arafat"),
              subtitle: Text("Going to the moon"),
              leading: Icon(Icons.account_circle, color: Colors.blue),
              trailing: Icon(Icons.delete, color: Colors.red),
            ),
            ListTile(
              title: Text("Yeasin Arafat"),
              subtitle: Text("Going to the moon"),
              leading: Icon(Icons.account_circle, color: Colors.blue),
              trailing: Icon(Icons.delete, color: Colors.red),
            ),
            ListTile(
              title: Text("Yeasin Arafat"),
              subtitle: Text("Going to the moon"),
              leading: Icon(Icons.account_circle, color: Colors.blue),
              trailing: Icon(Icons.delete, color: Colors.red),
            ),
            ListTile(
              title: Text("Yeasin Arafat"),
              subtitle: Text("Going to the moon"),
              leading: Icon(Icons.account_circle, color: Colors.blue),
              trailing: Icon(Icons.delete, color: Colors.red),
            ),
            ListTile(
              title: Text("Yeasin Arafat"),
              subtitle: Text("Going to the moon"),
              leading: Icon(Icons.account_circle, color: Colors.blue),
              trailing: Icon(Icons.delete, color: Colors.red),
            ),
            ListTile(
              title: Text("Yeasin Arafat"),
              subtitle: Text("Going to the moon"),
              leading: Icon(Icons.account_circle, color: Colors.blue),
              trailing: Icon(Icons.delete, color: Colors.red),
            ),
            ListTile(
              title: Text("Yeasin Arafat"),
              subtitle: Text("Going to the moon"),
              leading: Icon(Icons.account_circle, color: Colors.blue),
              trailing: Icon(Icons.delete, color: Colors.red),
            ),

          ],
        )

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
