import 'dart:async';

import 'package:apphub/GameBar/homepage1.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
     @override
     void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomePage1()));
      //HOMEPAGE1 IS PRESENT IN GameBar
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('Images/google.png', height: 300,width: 300,),
              Divider(color: Colors.transparent,height: 250,),
              CircularProgressIndicator(color: Colors.black,)
            ],
          ),
        ),
      ) ,
    );
  }
}
