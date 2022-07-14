import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GoogleSheetsApi extends StatefulWidget {
  @override
  State<GoogleSheetsApi> createState() => _GoogleSheetsApiState();
}

class _GoogleSheetsApiState extends State<GoogleSheetsApi> {
  Future getDataFromGoogleSheet() async {
    final url = Uri.parse(
        'https://script.google.com/macros/s/AKfycbyh3bXfc7vgj_sorlSQlkJjemcqDezy8USQ7X58g-4ZOw20txmUk1-kxCBxlPrCu-Jw/exec');
    final response = await http.get(url);
    print(response.statusCode);
    return jsonDecode(response.body);
  }

  Future postDataIntoGoogleSheet() async {
    final url =
        'https://script.google.com/macros/s/AKfycbw_3zGQfmSx01pGcBsniV2wSc-71pFhpGWNntsCpAzaC9l15NqjqW3V6m44NZDlEFxT/exec';
    try {
      var response = await http.post(Uri.parse(url), body:
      {"id" : "18ICTCSE001", "name": "Rakibul Haque"}
      );
      print(response.statusCode);
      return jsonDecode(response.body);
    } catch (e) {
      print("Error: " + e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Text("Hello World\n"),
        FlatButton(
            onPressed: () async {
              print("Button Clicked");
              var res = await getDataFromGoogleSheet();
              print(res);
            },
            child: Text("Get Data")),
        FlatButton(
            onPressed: () async {
              print("Button Clicked");
              var res = await postDataIntoGoogleSheet();
              print("Result: " + res.toString());
            },
            child: Text("Post Data"))
      ],
    ));
  }
}
