import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:learn_flutter/firebaseAuth.dart';
import 'package:learn_flutter/home_screen.dart';
import 'package:learn_flutter/login.dart';
import 'firebase_options.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Learn_Flutter",
      home: StreamBuilder(
        stream: Authentication().auth.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.hasData) {
            return HomePage();
          }
          return Login();
        },
      )
    );
  }
}
