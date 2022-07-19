import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/firebaseAuth.dart';

class HomePage extends StatelessWidget {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> readData() async {
    try {
      QuerySnapshot qn = await firestore.collection('users').get();
      print(qn.docs.length);
      qn.docs.forEach((doc){
        print(doc.data());
      }
      );

      QuerySnapshot aqn = await firestore.collection('Attendance').get();
      print(aqn.docs.length);
      aqn.docs.forEach((doc) {
        print(doc.data());
      });

      DocumentReference adr = firestore.collection('Attendance').doc('CSE101');
      DocumentSnapshot adr_data = await adr.get();
      print(adr_data.data());
    } catch(e) {
      print("Error: " + e.toString());
    }
  }

  Future<void> addData() async{

    DocumentReference users = firestore.collection('users').doc('20-22');
    try{
      users.set({
        'CHEM' : [{
          'id' : '18ICTCSE001',
          'name' : 'Yeasin Arafat',
        },
          {
            'id' : '18ICTCSE002',
            'name' : 'Anik Das'
          }
        ],
      }

      );
    } catch(e) {
      print(e.toString());
    }

  }

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
        child: Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Read Data From FireStore"),
                onPressed: () async {
                 await readData();
                },
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                child: Text("Add Data"),
                onPressed: () async {
                  await addData();
                },
              )
            ],
          ),
        )
      ),
    );
  }
}