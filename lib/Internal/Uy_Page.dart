import 'package:flutter/material.dart';

class Uy_Page extends StatefulWidget {
  static final String id ='Uy_Page';

  String img;

   Uy_Page({super.key,required this.img});

  @override
  State<Uy_Page> createState() => _Uy_PageState();
}

class _Uy_PageState extends State<Uy_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 280,

            )
          ],
        ),
      ),
    );
  }
}
