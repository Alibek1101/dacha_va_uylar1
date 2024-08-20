import 'package:dacha_va_uylar/page/Dachalar.dart';
import 'package:dacha_va_uylar/page/UyJoyArenda.dart';
import 'package:dacha_va_uylar/page/UyOlish_Page.dart';
import 'package:flutter/material.dart';

class Main_Page extends StatefulWidget {
 static final String id = "Home_Page";
  const Main_Page({super.key});

  @override
  State<Main_Page> createState() => _Main_PageState();
}

class _Main_PageState extends State<Main_Page> {
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
      body: Container(
        padding: EdgeInsets.all(80),
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 100,
                child: Image.asset("assets/image3.png"),
              ),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, Dachalar.id);
              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.only(
                      topLeft:Radius.circular(46),
                      bottomRight: Radius.circular(46))),
                child: Center(
                  child: Text(
                    "Dachalar",style: TextStyle(color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, UyJoyArenda.id);
              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(46),
                        bottomRight: Radius.circular(46))),
                child: Center(
                  child: Text(
                    "Uy Joy Arenda",
                    style: TextStyle(color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, UyolishPage.id);
              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(46),
                        bottomRight: Radius.circular(46))),
                child: Center(
                  child: Text(
                    "Uy Olish",
                    style: TextStyle(color: Colors.white,fontSize: 26,
                    fontWeight: FontWeight.w700),
                  ),
                ),
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
      ),
    );
  }
}
