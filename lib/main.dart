import 'package:dacha_va_uylar/page/Dachalar.dart';
import 'package:dacha_va_uylar/page/Main_Page.dart';
import 'package:dacha_va_uylar/page/Splash.dart';
import 'package:dacha_va_uylar/page/UyJoyArenda.dart';
import 'package:dacha_va_uylar/page/UyOlish_Page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCgDP2d8l0QC0CO-UfCqXxrIKUy92pdFHQ",
            databaseURL: "https://dachavauylar-default-rtdb.firebaseio.com",
            authDomain: "dachavauylar.firebaseapp.com",
            projectId: "dachavauylar",
            storageBucket: "dachavauylar.appspot.com",
            messagingSenderId: "603923889115",
            appId: "1:603923889115:web:552701331afa889bf285fe",
            measurementId: "G-KNVKY01NSY"
        ));
  } else {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
          apiKey: 'AIzaSyCWREJ4FlPHJeKHU7vpU7Kd45g_VsqrPtA',
          appId: '1:603923889115:android:ba4d04e19ca8b5d5f285fe',
          messagingSenderId: 'messagingSenderId',
          projectId: 'dachavauylar',
          storageBucket: 'dachavauylar.appspot.com',
        )
    );
  }
  runApp(const MyApp()
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:  Splash(),
        routes: {
          Main_Page.id:(context)=>Main_Page(),
          Dachalar.id:(context)=>Dachalar(),
           UyJoyArenda.id:(context)=>UyJoyArenda(),
           UyolishPage.id:(context)=>UyolishPage(),

        }
        );
  }
}