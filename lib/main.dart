import 'package:flutter/material.dart';
import 'package:learn_flutter/firestore.dart';
import 'package:firebase_core/firebase_core.dart';
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
      title: "Learn Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Learn Flutter"),
          centerTitle: true,
        ),
        body: FirestoreDatabase(),
      ),
    );
  }
}
