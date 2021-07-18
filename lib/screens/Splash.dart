import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Login.dart';

class Splash extends StatefulWidget{
  @override
  SplashState_ createState() => SplashState_();
}

class SplashState_ extends State<Splash>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawerEnableOpenDragGesture: false,
          body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/splash.jpg"),
                      fit: BoxFit.cover
                  )
              ),
              child: Container(

              )
          )
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            () =>
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder:
                    (context) => Login()
                )
            )
    );
  }

}