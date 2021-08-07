import 'package:flutter/material.dart';
import 'package:flutter_tutorial/screens/OtpScreen.dart';
import 'package:flutter_tutorial/screens/SignUpScreen.dart';

class Login extends StatefulWidget {
  @override
  LoginState_ createState() => LoginState_();
}

class LoginState_ extends State<Login> {
  BuildContext context;
  bool _isEditingText = false;
  TextEditingController _editingController;
  String initialText = "Enter mobile no";

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawerEnableOpenDragGesture: false, body: Main()
      ),
    );
  }

  Widget Main() {
    return SingleChildScrollView(
      child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/login_bg.jpg"), fit: BoxFit.cover)),
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                    // color: Colors.red,
                    ),
              ),
              Expanded(
                flex: 1,
                child: centerPart(),
              ),
              Expanded(flex: 1, child: bottomPart()),
            ],
          ))),
    );
  }

  Widget centerPart() {
    return Container(
      // color: Colors.green,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            // color: Colors.red,
            child: Text(
              "Mobile No",
              style: TextStyle(color: Colors.grey, fontFamily: 'Dunkin'),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            // color: Colors.red,
            child: _editTitleTextField(),
          ),
          signup(),
          orOptions(),
          googleFbIcons()
        ],
      ),
    );
  }

  Widget googleFbIcons() {
    return Container(
      // color: Colors.white,
      height: 30,
      child: Row(
        children: [
          Expanded(child: Container()),
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: ExactAssetImage(
                  "images/fb.jpg",
                ),
              ),
            ),
            margin: EdgeInsets.only(left: 10),
          ),
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: ExactAssetImage(
                  "images/google.jpg",
                ),
              ),
            ),
            margin: EdgeInsets.only(left: 10),
          ),
          Expanded(child: Container())
        ],
      ),
    );
  }

  Widget orOptions() {
    return Container(
      // color: Colors.white,
      height: 30,
      child: Row(
        children: [
          Expanded(child: Container()),
          Container(
            width: 80,
            height: 1,
            color: Colors.blue,
          ),
          Container(
            width: 30,
            height: 30,
            child: Text(
              "OR",
              style: TextStyle(color: Colors.black),
            ),
            margin: EdgeInsets.only(left: 10, right: 10),
          ),
          Container(
            width: 80,
            height: 1,
            color: Colors.blue,
          ),
          Expanded(child: Container())
        ],
      ),
    );
  }

  void clickedOtp(){
    Navigator.push(context,
        MaterialPageRoute(builder:
            (context) => Otp()
        )
    );
  }

  void clickedSignUp(){
    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) => SignUpScreen()
        )
    );
  }

  Widget signup() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            child: Text("don't have account?"),
          ),
          Expanded(
              child: GestureDetector(
                onTap: clickedSignUp,
                child: Container(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Signup",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ),
              )
          ),
          Expanded(
            child: Center(
                child: GestureDetector(
                  onTap: clickedOtp,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "GET OTP",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _editingController = TextEditingController(text: initialText);
  }

  @override
  void dispose() {
    _editingController.dispose();
    super.dispose();
  }

  Widget _editTitleTextField() {
    if (_isEditingText)
      return Container(
        child: TextField(
          cursorColor: Colors.grey,
          style: TextStyle(
              color: Colors.grey,
              letterSpacing: 1,
              decorationThickness: 0,
              decoration: TextDecoration.none),
          onSubmitted: (newValue) {
            setState(() {
              initialText = newValue;
              _isEditingText = false;
            });
          },
          autofocus: true,
          controller: _editingController,
        ),
      );

    return InkWell(
        onTap: () {
          setState(() {
            _isEditingText = true;
          });
        },
        child: Text(
          initialText,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15.0,
          ),
        ));
  }

  Widget bottomPart() {
    return Container(
      decoration: new BoxDecoration(
          image: new DecorationImage(
        image: new AssetImage("images/bottom.jpg"),
        fit: BoxFit.fitWidth,
      )),
    );
  }
}
