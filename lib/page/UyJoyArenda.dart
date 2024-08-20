import 'package:flutter/material.dart';

class UyJoyArenda extends StatefulWidget {
  static final String id ="UyJoyArenda";
  const UyJoyArenda({super.key});

  @override
  State<UyJoyArenda> createState() => _UyJoyArendaState();
}

class _UyJoyArendaState extends State<UyJoyArenda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Uy Joy Arenda',style: TextStyle(color: Colors.deepPurple,
        fontSize: 44,fontWeight: FontWeight.bold,
        fontFamily: 'Billabong'),),
      ),
      body: Container(

      ),
    );
  }
}
