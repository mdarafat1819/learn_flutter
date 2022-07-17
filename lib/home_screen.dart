import 'package:flutter/material.dart';
import 'package:learn_flutter/firebaseAuth.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn_Flutter"),
        actions: [
          TextButton.icon(
              onPressed: () async{
                await Authentication().auth.signOut();
              },
              icon: Icon(Icons.logout),
              label: Text("Sign Out"),
            style: TextButton.styleFrom(
              primary: Colors.white
            ),
          )
        ],
      ),
      body: Container(
        child: Text("hello World"),
      ),
    );
  }
}