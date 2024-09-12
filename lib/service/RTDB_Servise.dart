import 'dart:convert';
import 'package:firebase_database/firebase_database.dart';
import '../model/Post_model.dart';



class RTDBService {
  static final _databse = FirebaseDatabase.instance.ref();

  //Uylar

  static Future<Stream<DatabaseEvent>> addUylar(Post post) async {
    _databse.child("Uylar").push().set(post.toJson());
    return _databse.onChildAdded;
  }

  static Future<List<Post>> getUylar() async {
    List<Post> items = [];

    Query _query = _databse.ref.child("Uylar");
    DatabaseEvent event = await _query.once();

    var snapshot = event.snapshot;

    for (var child in snapshot.children) {
      var key=child.key;
      var jsonPost = jsonEncode(child.value);
      Map<String, dynamic> map = jsonDecode(jsonPost);
      var post = Post(
        name: map['name'],
        price: map['price'],
        img_url : map['img_url'],
        location: map['location'],
        phone: map ['phone'],
        img1: map ['img1'],
        img2: map ['img2'],
        img3:  map ['img3'],
        img4:  map ['img4'],
      );
      post.key=key;
      items.add(post);
    }
    return items;
  }


  //Dachalar

  static Future<Stream<DatabaseEvent>> addDachalar(Post post) async {
    _databse.child("dachalar").push().set(post.toJson());
    return _databse.onChildAdded;
  }

  static Future<List<Post>> getDachalar() async {
    List<Post> items = [];

    Query _query = _databse.ref.child("dachalar");
    DatabaseEvent event = await _query.once();

    var snapshot = event.snapshot;

    for (var child in snapshot.children) {
      var jsonPost = jsonEncode(child.value);
      Map<String, dynamic> map = jsonDecode(jsonPost);
      var post = Post(
        name: map['name'],
        price: map['price'],
        img_url : map['img_url'],
        location: map['location'],
        phone: map['phone'],
        img1: map ['img1'],
        img2: map ['img2'],
        img3:  map ['img3'],
        img4:  map ['img4'],
      );
      items.add(post);
    }
    return items;
  }


  //Arenda Uy Joy

  static Future<Stream<DatabaseEvent>> addArenda(Post post) async {
    _databse.child("arenda").push().set(post.toJson());
    return _databse.onChildAdded;
  }

  static Future<List<Post>> getArenda() async {
    List<Post> items = [];

    Query _query = _databse.ref.child("arenda");
    DatabaseEvent event = await _query.once();

    var snapshot = event.snapshot;

    for (var child in snapshot.children) {
      var jsonPost = jsonEncode(child.value);
      Map<String, dynamic> map = jsonDecode(jsonPost);
      var post = Post(
        name: map['name'],
        price: map['price'],
        img_url : map['img_url'],
        phone: map['phone'],
        location: map['location'],
        img1: map ['img1'],
        img2: map ['img2'],
        img3:  map ['img3'],
        img4:  map ['img4'],
      );
      items.add(post);
    }
    return items;
  }

}