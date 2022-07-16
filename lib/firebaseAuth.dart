import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class Authentication {
  Future addNewUser(String user_email, String pass) async {
    try {
      FirebaseAuth auth = FirebaseAuth.instance;
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: user_email,
          password: pass
      );
      return userCredential.user?.email;
    } catch(e) {
      return e.toString();
    }
  }

  Future loginUser(String email, String pass) async{
    try {
      FirebaseAuth auth = FirebaseAuth.instance;
      UserCredential user = await auth.signInWithEmailAndPassword(email: email, password: pass);
      print(user);
      return user.user;
    } catch(e) {
      return e.toString();
    }

    }

}