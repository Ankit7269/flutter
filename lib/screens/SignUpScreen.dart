import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget{

  @override
  SignUpScreenState createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen>{

  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return new WillPopScope(
      onWillPop: () {
        Navigator.pop(context);
      },
      child: Scaffold(

      ),
    );
  }

}

