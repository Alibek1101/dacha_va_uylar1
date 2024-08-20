import 'package:flutter/material.dart';

class Dachalar extends StatefulWidget {
  static final String id ="Dachalar";
  const Dachalar({super.key});

  @override
  State<Dachalar> createState() => _DachalarState();
}

class _DachalarState extends State<Dachalar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "D a ch a l a r",style: TextStyle(color: Colors.deepPurpleAccent,
        fontSize: 50,fontWeight: FontWeight.bold,
        fontFamily: 'Billabong'),
        )
      ),
      body: Container(
      padding: EdgeInsets.all(14),
        child: ListView(
            children:[
              Column(
            children: [
              Container(
                height: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(width: 2.1,color: Colors.grey),),
                child: Column(
                  children: [
                    Container(
                      height: 235,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.only(topLeft: Radius.circular(14),
                           topRight: Radius.circular(14)),
                       image: DecorationImage(
                           image: AssetImage("assets/image5.png"),fit: BoxFit.cover
                     ),
                    )
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: [
                                      Text("  Narxi:",
                                        style: TextStyle(color: Colors.deepPurpleAccent,
                                    fontSize: 22,fontWeight: FontWeight.bold),
                                    ),
                                      SizedBox(height: 10,),
                                      Text("  Nomi:",
                                        style: TextStyle(color: Colors.deepPurpleAccent,
                                            fontSize: 22,fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: [
                                      Text("200\$",
                                        style: TextStyle(color: Colors.green,
                                            fontSize: 26,fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(" Oq Saroy",
                                        style: TextStyle(color: Colors.green,
                                            fontSize: 24,fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 35,
                                  width: 140,
                                  decoration: BoxDecoration(
                                    color: Colors.lightGreen,
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                                  child: Center(
                                    child: Text(
                                      "Telefon",style: TextStyle(
                                      color: Colors.white,fontSize: 22,
                                      fontWeight: FontWeight.w700
                                    ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  height: 35,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20))),
                                  child: Center(
                                    child: Text(
                                      "Joylashuv",style: TextStyle(color: Colors.white,
                                    fontSize: 22,fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                ),
              SizedBox(height: 14,),
              Container(
                height: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(width: 2.1,color: Colors.grey),),
                child: Column(
                  children: [
                    Container(
                        height: 235,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(14),
                              topRight: Radius.circular(14)),
                          image: DecorationImage(
                              image: AssetImage("assets/image5.png"),fit: BoxFit.cover
                          ),
                        )
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: [
                                      Text("  Narxi:",
                                        style: TextStyle(color: Colors.deepPurpleAccent,
                                            fontSize: 22,fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10,),
                                      Text("  Nomi:",
                                        style: TextStyle(color: Colors.deepPurpleAccent,
                                            fontSize: 22,fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: [
                                      Text("200\$",
                                        style: TextStyle(color: Colors.green,
                                            fontSize: 26,fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(" Oq Saroy",
                                        style: TextStyle(color: Colors.green,
                                            fontSize: 24,fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 35,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreen,
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20))),
                                  child: Center(
                                    child: Text(
                                      "Telefon",style: TextStyle(
                                        color: Colors.white,fontSize: 22,
                                        fontWeight: FontWeight.w700
                                    ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  height: 35,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20))),
                                  child: Center(
                                    child: Text(
                                      "Joylashuv",style: TextStyle(color: Colors.white,
                                        fontSize: 22,fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 14,),
              Container(
                height: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(width: 2.1,color: Colors.grey),),
                child: Column(
                  children: [
                    Container(
                        height: 235,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(14),
                              topRight: Radius.circular(14)),
                          image: DecorationImage(
                              image: AssetImage("assets/image5.png"),fit: BoxFit.cover
                          ),
                        )
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: [
                                      Text("  Narxi:",
                                        style: TextStyle(color: Colors.deepPurpleAccent,
                                            fontSize: 22,fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10,),
                                      Text("  Nomi:",
                                        style: TextStyle(color: Colors.deepPurpleAccent,
                                            fontSize: 22,fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: [
                                      Text("200\$",
                                        style: TextStyle(color: Colors.green,
                                            fontSize: 26,fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(" Oq Saroy",
                                        style: TextStyle(color: Colors.green,
                                            fontSize: 24,fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 35,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreen,
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20))),
                                  child: Center(
                                    child: Text(
                                      "Telefon",style: TextStyle(
                                        color: Colors.white,fontSize: 22,
                                        fontWeight: FontWeight.w700
                                    ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  height: 35,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20))),
                                  child: Center(
                                    child: Text(
                                      "Joylashuv",style: TextStyle(color: Colors.white,
                                        fontSize: 22,fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 14,),
              Container(
                height: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(width: 2.1,color: Colors.grey),),
                child: Column(
                  children: [
                    Container(
                        height: 235,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(14),
                              topRight: Radius.circular(14)),
                          image: DecorationImage(
                              image: AssetImage("assets/image5.png"),fit: BoxFit.cover
                          ),
                        )
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: [
                                      Text("  Narxi:",
                                        style: TextStyle(color: Colors.deepPurpleAccent,
                                            fontSize: 22,fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10,),
                                      Text("  Nomi:",
                                        style: TextStyle(color: Colors.deepPurpleAccent,
                                            fontSize: 22,fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: [
                                      Text("200\$",
                                        style: TextStyle(color: Colors.green,
                                            fontSize: 26,fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(" Oq Saroy",
                                        style: TextStyle(color: Colors.green,
                                            fontSize: 24,fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 35,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreen,
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20))),
                                  child: Center(
                                    child: Text(
                                      "Telefon",style: TextStyle(
                                        color: Colors.white,fontSize: 22,
                                        fontWeight: FontWeight.w700
                                    ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  height: 35,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20))),
                                  child: Center(
                                    child: Text(
                                      "Joylashuv",style: TextStyle(color: Colors.white,
                                        fontSize: 22,fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 14,),
              Container(
                height: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(width: 2.1,color: Colors.grey),),
                child: Column(
                  children: [
                    Container(
                        height: 235,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(14),
                              topRight: Radius.circular(14)),
                          image: DecorationImage(
                              image: AssetImage("assets/image5.png"),fit: BoxFit.cover
                          ),
                        )
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: [
                                      Text("  Narxi:",
                                        style: TextStyle(color: Colors.deepPurpleAccent,
                                            fontSize: 22,fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10,),
                                      Text("  Nomi:",
                                        style: TextStyle(color: Colors.deepPurpleAccent,
                                            fontSize: 22,fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: [
                                      Text("200\$",
                                        style: TextStyle(color: Colors.green,
                                            fontSize: 26,fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(" Oq Saroy",
                                        style: TextStyle(color: Colors.green,
                                            fontSize: 24,fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 35,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreen,
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20))),
                                  child: Center(
                                    child: Text(
                                      "Telefon",style: TextStyle(
                                        color: Colors.white,fontSize: 22,
                                        fontWeight: FontWeight.w700
                                    ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  height: 35,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20))),
                                  child: Center(
                                    child: Text(
                                      "Joylashuv",style: TextStyle(color: Colors.white,
                                        fontSize: 22,fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 14,),
              Container(
                height: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(width: 2.1,color: Colors.grey),),
                child: Column(
                  children: [
                    Container(
                        height: 235,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(14),
                              topRight: Radius.circular(14)),
                          image: DecorationImage(
                              image: AssetImage("assets/image5.png"),fit: BoxFit.cover
                          ),
                        )
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: [
                                      Text("  Narxi:",
                                        style: TextStyle(color: Colors.deepPurpleAccent,
                                            fontSize: 22,fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10,),
                                      Text("  Nomi:",
                                        style: TextStyle(color: Colors.deepPurpleAccent,
                                            fontSize: 22,fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: [
                                      Text("200\$",
                                        style: TextStyle(color: Colors.green,
                                            fontSize: 26,fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(" Oq Saroy",
                                        style: TextStyle(color: Colors.green,
                                            fontSize: 24,fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 35,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreen,
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20))),
                                  child: Center(
                                    child: Text(
                                      "Telefon",style: TextStyle(
                                        color: Colors.white,fontSize: 22,
                                        fontWeight: FontWeight.w700
                                    ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  height: 35,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20))),
                                  child: Center(
                                    child: Text(
                                      "Joylashuv",style: TextStyle(color: Colors.white,
                                        fontSize: 22,fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
    ]
        ),
      ),
    );
  }
}
