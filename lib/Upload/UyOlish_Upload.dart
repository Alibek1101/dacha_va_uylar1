import 'dart:io';
import 'package:dacha_va_uylar/model/Post_model.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../service/RTDB_Servise.dart';
import '../service/Storage.dart';

class UploadUyOlish extends StatefulWidget {
  static final String id = "UploadUyOlish";

  const UploadUyOlish({super.key});

  @override
  State<UploadUyOlish> createState() => _UploadUyOlishState();
}

class _UploadUyOlishState extends State<UploadUyOlish> {
  var isLoading = false;
  final nameController = TextEditingController();
  final captionController = TextEditingController();
  final locationController = TextEditingController();

  File? _image;
  final picker = ImagePicker();

  Future _getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print("No image");
      }
    });
  }

  _createPost() {
    String name = nameController.text.toString().trim();
    String caption = captionController.text.toString().trim();
    String location = locationController.text.toString().trim();

    if (name.isEmpty || caption.isEmpty || location.isEmpty) return;

    _apiUploadImage(name, caption, location);
  }

  _apiUploadImage(String name, String content, String location) {
    setState(() {
      isLoading = true;
    });
    StorageService.uploadImage(_image!).then((img_url) => {
      _apiCreateUylar(name, content, img_url,location),
    });
  }

  _apiCreateUylar(String name, String content, String img_url,String location) {
    var post = Post(name: name, price: content, img_url: img_url,location: location);
    RTDBService.addUylar(post).then((value) => {
      _resAddPost(),
    });
  }


  _resAddPost() {
    setState(() {
      isLoading = false;
    });
    Navigator.of(context).pop({'data': 'done'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "U y l a r",
            style: TextStyle(color: Colors.deepPurple,fontSize: 50,fontWeight: FontWeight.bold,fontFamily: "Billabong"),
          ),
        ),
        body: Container(
        padding: EdgeInsets.all(12),
    child: Stack(
    children: [
    Column(
    children: [
    SizedBox(height: 10),
      InkWell(
        onTap: () {
          _getImage();
        },
        child: Container(
            height: 100,
            width: 100,
            child: _image != null
                ? Image.file(
              _image!,
              fit: BoxFit.cover,
            )
                : Container(
              decoration: BoxDecoration(
                border: Border.all(width: 0.7,color: Colors.black),
                image: DecorationImage(
                    image: AssetImage("assets/upload.png")
                ),
              ),
            )),
      ),
      SizedBox(height: 10),
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 90,
              width: 90,
              child: Image.asset('assets/upload.png',fit: BoxFit.cover,),
            ),
            Container(
              height: 90,
              width: 90,
              child: Image.asset('assets/upload.png',fit: BoxFit.cover,),
            ),
            Container(
              height: 90,
              width: 90,
              child: Image.asset('assets/upload.png',fit: BoxFit.cover,),
            ),
            Container(
              height: 90,
              width: 90,
              child: Image.asset('assets/upload.png',fit: BoxFit.cover,),
            ),
          ],
        ),
      ),
    SizedBox(
    height: 20,
    ),
    TextField(
    controller: nameController,
    decoration: InputDecoration(hintText: "Narxi"),
    ),
    TextField(
    controller: captionController,
    decoration: InputDecoration(hintText: "Nomi"),
    ),
      TextField(
        controller: locationController,
        decoration: InputDecoration(hintText:"Location"),
      ),
    SizedBox(
    height: 20,
    ),
    InkWell(
    onTap: () {
    _createPost();
    },
    child: Container(
    height: 56,
    decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(10)),
    child: Center(
    child: Text(
    "Save",
    style: TextStyle(color: Colors.white, fontSize: 20),
    )),
    ),
    )],
    )
    ],
    ),
        ),
    );
  }
}