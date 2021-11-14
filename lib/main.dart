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
    );
  }
}

class Contact extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _ContactState();
  }
}

class _ContactState extends State<Contact> {
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Form(
        key: _formkey,
        child: Column(children: [
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return "Fil up required";
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: "Enter Your User Name",
              labelText: "User Name",
              border: OutlineInputBorder(),
             ),
          ),
          TextFormField(
            validator: (value) {
              if (value!.length < 4) {
                return "Minimum 4 digit is required";
              }
              return null;
            },
            controller: userName,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter Your Password",
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
            child: Text("Submit"),
            onPressed: () {
              if (_formkey.currentState!.validate() == true) {
                print("Form submitted succesfully");
              }
            },
          )
        ]),
      ),
    );
  }
}
