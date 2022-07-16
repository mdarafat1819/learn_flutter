import 'package:flutter/material.dart';

import './login.dart';
import './firebaseAuth.dart';

class Registration extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _Registration();
  }
}

class _Registration extends State<Registration> {
  bool clicked = false;
  String sign_up_status = "";
  TextEditingController email = TextEditingController();
  TextEditingController pass1 = TextEditingController();
  TextEditingController pass2 = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sign Up"),
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
                  controller: pass1,
                  decoration: InputDecoration(
                      label: Text("Password"),
                      border:OutlineInputBorder(),
                      prefixIcon: Icon(Icons.key_rounded)
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  obscureText: true,
                  controller: pass2,
                  decoration: InputDecoration(
                      label: Text("Confirmed Password"),
                      border:OutlineInputBorder(),
                      prefixIcon: Icon(Icons.key_rounded)
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    child: !clicked ?
                    Text("Submit", style: TextStyle(fontSize: 20),) :
                    Container(
                      child: CircularProgressIndicator(
                        color: Colors.red,
                      ),
                    ),
                    onPressed: () async{
                      setState(() {
                        clicked = true;
                      });
                      sign_up_status = await Authentication().addNewUser(email.text, pass1.text);
                      setState(() {
                        clicked = false;
                      });
                    },
                  ),
                ),
                 FlatButton(
                  child: Text("Click Here to Log In", style: TextStyle(color: Colors.blueGrey),),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => Login()));
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                  },
                ),
                Container(
                  child: Text(sign_up_status),
                )
              ],
            )
        )
    );

  }
}