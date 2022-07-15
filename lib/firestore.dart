import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreDatabase extends StatefulWidget {
  @override
  State<FirestoreDatabase> createState() => _FirestoreDatabaseState();
}

class _FirestoreDatabaseState extends State<FirestoreDatabase> {
  Future getData() async {
    FirebaseFirestore.instance
    .collection('users')
    .doc('18-19')
    .get()
    .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        print('Document data: ${documentSnapshot.data()}');
      } else {
        print('Document does not exist on the database');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          ElevatedButton(
              onPressed: () async {
                 await getData();
              },
              child: Text("Get Data from firestore"))
        ],
      ),
    );
  }
}
