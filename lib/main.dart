import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

int main() {
  runApp(MyApp());
  return 0;
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Learn Flutter",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  Future getData() async {
    final url = Uri.parse('https://fakestoreapi.com/products');
    final response = await http.get(url);
    print(response.statusCode);
    return jsonDecode(response.body);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn Flutter"),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return Center(
                child: ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(snapshot.data[index]['title'], style: TextStyle(fontSize: 25),),
                        leading: Image.network(snapshot.data[index]['image']),
                        subtitle: Text("Price: "+snapshot.data[index]['price'].toString(), style: TextStyle(fontSize: 15),),
                      );
                    }),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
