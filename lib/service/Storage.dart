import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class StorageService {
  static final _storage = FirebaseStorage.instance.ref();

  static final folder = "post_image";

  static Future<dynamic> uploadImage(File images) async {
    String img_name = "images" + DateTime.now().toString();
    var firebaseStorage = _storage.child(folder).child(img_name);
    var uploadTask = firebaseStorage.putFile(images);
    final TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() => {});
    String downloadUrl = await firebaseStorage.getDownloadURL();
    print(downloadUrl);
    return downloadUrl;
  }
}
