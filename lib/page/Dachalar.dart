import 'package:dacha_va_uylar/Upload/Dachalar_Upload.dart';
import 'package:flutter/material.dart';
import '../model/Post_model.dart';
import '../service/RTDB_Servise.dart';
import '../service/Url_service.dart';

class Dachalar extends StatefulWidget {
  static final String id = 'Dachalar';

  const Dachalar({super.key});

  @override
  State<Dachalar> createState() => _DachalarState();
}
class _DachalarState extends State<Dachalar> {
  List<Post> items = [];

  Future _callUploadPage() async {
    Map result = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return Dachalar_Upload();
    }));
    if (result != null && result.containsKey("data")) {
      print(result['data']);
    }
    _apiPostList();
  }
  _apiPostList() async {
    var list = await RTDBService.getDachalar();
    items.clear();
    setState(() {
      items = list;
    });
  }
  @override
  void initState() {
    super.initState();
    _apiPostList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'D a ch a l a r',
          style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 50,
              fontWeight: FontWeight.bold,
              fontFamily: 'Billabong'),
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                        height: 330,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.8, color: Colors.grey),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 5,
                              blurRadius: 5,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                                height: 240,
                                child: PageView(
                                  children: [
                                    items[index].img_url != null
                                        ? Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                      18,
                                                    ),
                                                    topRight:
                                                        Radius.circular(18)),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      items[index].img_url!),
                                                  fit: BoxFit.cover,
                                                )),
                                          )
                                        : Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                    "assets/image/upload.png",
                                                  ),
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                    items[index].img1 != null
                                        ? Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                      18,
                                                    ),
                                                    topRight:
                                                        Radius.circular(18)),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      items[index].img1!),
                                                  fit: BoxFit.cover,
                                                )),
                                          )
                                        : Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                    "assets/image/upload.png",
                                                  ),
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                    items[index].img2 != null
                                        ? Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                      18,
                                                    ),
                                                    topRight:
                                                        Radius.circular(18)),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      items[index].img2!),
                                                  fit: BoxFit.cover,
                                                )),
                                          )
                                        : Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                    "assets/image/upload.png",
                                                  ),
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                    items[index].img3 != null
                                        ? Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                      18,
                                                    ),
                                                    topRight:
                                                        Radius.circular(18)),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      items[index].img3!),
                                                  fit: BoxFit.cover,
                                                )),
                                          )
                                        : Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                    "assets/image/upload.png",
                                                  ),
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                    items[index].img4 != null
                                        ? Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                      18,
                                                    ),
                                                    topRight:
                                                        Radius.circular(18)),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      items[index].img4!),
                                                  fit: BoxFit.cover,
                                                )),
                                          )
                                        : Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                    "assets/image/upload.png",
                                                  ),
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                  ],
                                )),
                            Expanded(
                                child: Row(
                              children: [
                                Expanded(
                                    child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 76,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                ' Narxi:',
                                                style: TextStyle(
                                                    color: Colors.deepPurple,
                                                    fontSize: 23,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                ' Nomi:',
                                                style: TextStyle(
                                                    color: Colors.deepPurple,
                                                    fontSize: 22,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                items[index].name ?? "",
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 26,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                items[index].price ?? "",
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 24),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )),
                                Expanded(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        UrlService.makePhoneCall(
                                            items[index].phone);
                                      },
                                      child: Container(
                                        height: 35,
                                        width: 140,
                                        decoration: BoxDecoration(
                                            color: Colors.lightGreen,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(20))),
                                        child: Center(
                                          child: Text(
                                            "Telefon",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        UrlService.launchInBrowser(
                                            Uri.parse(items[index].location));
                                      },
                                      child: Container(
                                        height: 35,
                                        width: 140,
                                        decoration: BoxDecoration(
                                            color: Colors.amber,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(20))),
                                        child: Center(
                                          child: Text(
                                            "Joylashuv",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                              ],
                            ))
                          ],
                        )),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _callUploadPage();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
