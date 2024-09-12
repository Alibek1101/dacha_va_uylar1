import 'dart:io';
import 'package:dacha_va_uylar/model/Post_model.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../service/RTDB_Servise.dart';
import '../service/Storage.dart';

class Dachalar_Upload extends StatefulWidget {
  static final String id = "Dachalar_Upload";

  const Dachalar_Upload({super.key});

  @override
  State<Dachalar_Upload> createState() => _Dachalar_UploadState();
}

class _Dachalar_UploadState extends State<Dachalar_Upload> {
  var isLoading = false;
  final nameController = TextEditingController();
  final captionController = TextEditingController();
  final locationController = TextEditingController();
  final phoneController = TextEditingController();
  File? _image;
  File? _img1;
  File? _img2;
  File? _img3;
  File? _img4;
  final picker = ImagePicker();
  List<File> images = [];

  Future _getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        images.add(_image!);
      } else {
        print("No image");
      }
    });
  }

  Future _getImage1() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _img1 = File(pickedFile.path);
        images.add(_img1!);
        print(images);
      } else {
        print("No image");
      }
    });
  }

  Future _getImage2() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _img2 = File(pickedFile.path);
        images.add(_img2!);
        print(images);
      } else {
        print("No image");
      }
    });
  }

  Future _getImage3() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _img3 = File(pickedFile.path);
        images.add(_img3!);
        print(images);
      } else {
        print("No image");
      }
    });
  }

  Future _getImage4() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _img4 = File(pickedFile.path);
        images.add(_img4!);
        print(images);
      } else {
        print("No image");
      }
    });
  }

  _createPost() {
    String name = nameController.text.toString().trim();
    String caption = captionController.text.toString().trim();
    String location = locationController.text.toString().trim();
    String phone = phoneController.text.toString().trim();

    if (name.isEmpty || caption.isEmpty || location.isEmpty || phone.isEmpty)
      return;

    _apiUploadImage(name, caption, location, phone);
  }

  _apiUploadImage(String name, String content, String location, String phone) {
    setState(() {
      isLoading = true;
    });
    // for (File a in images) {
    //   StorageService.uploadImage(a).then((img_url) => {
    //         _apiCreateUylar(name, content, img_url, location, phone),
    //       });
    // }

    List<String> imageUrls = [];

    Future.wait(images.map((File a) => StorageService.uploadImage(a))).then((imgUrls) {
      // Assign URLs to the correct image fields
      _apiCreateUylar(name, content, imgUrls , location, phone);
    });

    print(images);
  }

  _apiCreateUylar(String name, String content,  List<dynamic> imgUrls, String location,
      String phone) {
    String? imgurl = imgUrls.isNotEmpty ? imgUrls[0] : null;
    String? img1 = imgUrls.isNotEmpty ? imgUrls[1] : null;
    String? img2 = imgUrls.length > 1 ? imgUrls[2] : null;
    String? img3 = imgUrls.length > 2 ? imgUrls[3] : null;
    String? img4 = imgUrls.length > 3 ? imgUrls[4] : null;

    var post = Post(
      name: name,
      price: content,
      location: location,
      phone: phone,
      img_url: imgurl,
      img1: img1,
      img2: img2,
      img3: img3,
      img4: img4,
    );
    RTDBService.addDachalar(post).then((value) => {
          _resAddPost(),
        });
  }
  _resAddPost() {
    setState(() {
      isLoading = false;
    });
    Navigator.of(context).pop({'data':'done'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade100,
        centerTitle: true,
        title: Text(
          "D a ch a l a r",
          style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 50,
              fontWeight: FontWeight.bold,
              fontFamily: "Billabong"),
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
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                    width: 2, color: Colors.deepPurple),
                                image: DecorationImage(
                                    image: AssetImage("assets/upload.png")),
                              ),
                            )),
                ),
                SizedBox(height: 10),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          _getImage1();
                        },
                        child: Container(
                            height: 80,
                            width: 80,
                            child: _img1 != null
                                ? Image.file(
                                    _img1!,
                                    fit: BoxFit.cover,
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                          width: 2, color: Colors.deepPurple),
                                      image: DecorationImage(
                                          image:
                                              AssetImage("assets/upload.png")),
                                    ),
                                  )),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      InkWell(
                        onTap: () {
                          _getImage2();
                        },
                        child: Container(
                            height: 80,
                            width: 80,
                            child: _img2 != null
                                ? Image.file(
                                    _img2!,
                                    fit: BoxFit.cover,
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                          width: 2, color: Colors.deepPurple),
                                      image: DecorationImage(
                                          image:
                                              AssetImage("assets/upload.png")),
                                    ),
                                  )),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      InkWell(
                        onTap: () {
                          _getImage3();
                        },
                        child: Container(
                            height: 80,
                            width: 80,
                            child: _img3 != null
                                ? Image.file(
                                    _img3!,
                                    fit: BoxFit.cover,
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                          width: 2, color: Colors.deepPurple),
                                      image: DecorationImage(
                                          image:
                                              AssetImage("assets/upload.png")),
                                    ),
                                  )),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      InkWell(
                        onTap: () {
                          _getImage4();
                        },
                        child: Container(
                            height: 80,
                            width: 80,
                            child: _img4 != null
                                ? Image.file(
                                    _img4!,
                                    fit: BoxFit.cover,
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                          width: 2, color: Colors.deepPurple),
                                      image: DecorationImage(
                                          image:
                                              AssetImage("assets/upload.png")),
                                    ),
                                  )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(hintText: "Narxi",
                      hintStyle: TextStyle(color: Colors.deepPurple,
                          fontSize: 18,fontWeight: FontWeight.w700),
                  ),
                ),
                TextField(
                  controller: captionController,
                  decoration: InputDecoration(hintText: "Nomi",
                      hintStyle: TextStyle(color: Colors.deepPurple,
                      fontSize: 18,fontWeight: FontWeight.w700)),
                ),
                TextField(
                  controller: phoneController,
                  decoration: InputDecoration(hintText: "Telefon",
                      hintStyle: TextStyle(color: Colors.deepPurple,
                          fontSize: 18,fontWeight: FontWeight.w700)),
                ),
                TextField(
                  controller: locationController,
                  decoration: InputDecoration(hintText: "Location",
                      hintStyle: TextStyle(color: Colors.deepPurple,
                          fontSize: 18,fontWeight: FontWeight.w700)),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    _createPost();
                    _resAddPost();
                  },
                  child: Container(
                    height: 56,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      "Save",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
