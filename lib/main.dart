import 'package:apphub/AppBar/homepage2.dart';
import 'package:apphub/GoogleAccounts.dart';
import 'package:apphub/MultipleAccounts.dart';
import 'package:apphub/SpeakUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'GameBar/homepage1.dart';
import 'SplashScreen/splashscreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

   Brightness brightness ;

   //FlutterStatusbarcolor.setStatusBarColor(Colors.white);
   return const MaterialApp(
     debugShowCheckedModeBanner: false,
     //  theme:  ,
      title: ' this app',
      // theme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
       home: SplashScreen(),
     // home: Speakup(),
      //home: MultipleAccounts(),
    );
  }
}