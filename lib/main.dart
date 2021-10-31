import 'dart:js';

import 'package:flutter/material.dart';
import 'package:learn_flutter/secondScreen.dart';

import 'secondScreen.dart';

int main() {
  runApp(MaterialApp(title: "Flutter App", home: HomePage()));
  return 0;
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App Bar"), centerTitle: true),
      drawer: Drawer(
          child: Column(children: [
        UserAccountsDrawerHeader(
          accountName: Text("Yeasin Arafat"),
          accountEmail: Text("mdarafat1819@gmail.com"),
        ),
        ListTile(
          title: Text("Second Page"),
          leading: Icon(Icons.home),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SecondPage()));
          },
        )
      ])),
      body: Contact(),
      floatingActionButton: FloatingActionButton(
        hoverColor: Colors.green,
        backgroundColor: Colors.amber,
        child: Icon(Icons.message),
        onPressed: () {
          print("Hello");
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "People")
        ],
        onTap: (index) {
          print(index);
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
      child: Column(children: [
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
        Text("Hello $str"),
        ElevatedButton(
          child: Text("Got to Second Page"),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SecondPage()));
          },
        )
      ]),
    );
  }
}
