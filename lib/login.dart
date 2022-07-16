import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/firebaseAuth.dart';

import './user_registration.dart';

class Login extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Log In"),
        ),
        body: Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                      label: Text("Enter Your E-mail"),
                      border:OutlineInputBorder(),
                      prefixIcon: Icon(Icons.account_circle)
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  obscureText: true,
                  controller: pass,
                  decoration: InputDecoration(
                      label: Text("Password"),
                      border:OutlineInputBorder(),
                      prefixIcon: Icon(Icons.key_rounded)
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    child: Text("Log In", style: TextStyle(fontSize: 20),),
                    onPressed: ()async{
                      User? user = await Authentication().loginUser(email.text, pass.text);
                      print(user?.email);
                    },
                  ),
                ),
                FlatButton(
                  child: Text("Click Here to Sign Up", style: TextStyle(color: Colors.blueGrey),),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Registration()));
                   // Navigator.push(context, MaterialPageRoute(builder: (context) => Registration()));
                  },
                )
              ],
            )
        )
    );
  }
}