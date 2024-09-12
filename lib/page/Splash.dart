import 'dart:async';

import 'package:dacha_va_uylar/page/Main_Page.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
        return Main_Page();
      }));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("DACHA VA UYLAR",style: TextStyle(
            color: Colors.deepPurpleAccent,fontSize: 40,
            fontWeight: FontWeight.bold,
            fontFamily: 'Billabong'
        ),),
      ),
      backgroundColor: Colors.black,
     body: Column(
       //mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         SizedBox(height: 80,),
         Center(
           child: Container(
             height: 100,
             child: Image.asset("assets/image3.png"),
           ),
         ),
         SizedBox(height: 50,),
         Container(
           height: 240,
          width: 240,
          child: Center(
            child: Image.asset('assets/splash.png',fit: BoxFit.cover,),
          ),
         ),
         Center(
           child: Container(
             height: 180,
             child: Image.asset("assets/image4.png"),
           ),
         ),
       ],
     ),
    );
  }
}
