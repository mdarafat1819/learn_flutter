import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class ImageUpload extends StatefulWidget {
  const ImageUpload({Key? key}) : super(key: key);

  @override
  State<ImageUpload> createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {

  FirebaseStorage firebaseStorage = FirebaseStorage.instance;
  bool loading = false;
  Future<void>uploadImage(String source) async{
    final picker = ImagePicker();
    
    XFile? picked_image = await picker.pickImage(source: source == 'camera' ? ImageSource.camera : ImageSource.gallery);

    if(picked_image == null) {
      return;
    }
    String image_name = picked_image.name;
    File image_file = File(picked_image.path);

    try{
      setState(() {
        loading = true;
      });
      await firebaseStorage.ref(image_name).putFile(image_file);
      print("Successfully Uploaded");
      setState(() {
        loading = false;
      });

      final url = await firebaseStorage.ref(image_name).getDownloadURL();
      print(url.toString());
    } catch(e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Upload"),
      ),
      body: Center(
        child: loading ? CircularProgressIndicator() : Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           ElevatedButton.icon(
               onPressed: (){
                 uploadImage('camera');
               },
               icon: Icon(Icons.camera),
               label: Text("Camera")),
            SizedBox(width: 15,),
            ElevatedButton.icon(
                onPressed: (){
                  uploadImage('gallery');
                },
                icon: Icon(Icons.library_add),
                label: Text("Gallery")),
          ],
        ),
      ),
    );
  }
}
