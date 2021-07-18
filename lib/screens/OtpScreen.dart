import 'package:flutter/material.dart';

class Otp extends StatefulWidget {
  @override
  OtpState_ createState() => OtpState_();
}

class OtpState_ extends State<Otp> {
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return WillPopScope(
        onWillPop: () {
          Navigator.pop(context);
        },
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   title: Text("OTP",
        //   style: TextStyle(
        //       backgroundColor: Colors.transparent
        //   ),),
        // ),
          drawerEnableOpenDragGesture: false,
          body: Main()
      ),
    );
  }

  Widget Main() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/login_bg.jpg"),
              fit: BoxFit.cover
          )
      ),
      child: Container(
        child: Column(
          children: [
            //title()
          ],
        ),
      ),
    );
  }

  Widget title(){
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: MediaQuery.of(context).size.width,
      child: Text("OTP Verification"),
    );
  }

  @override
  void initState() {
    main();
    print("Hello World");
    super.initState();

  }

  void main() async {
    print(getMeSomeFood());
    print(await getMeSomethingBetter());
    maybeSomethingSweet().then((String value) {
      print(value);
    });

  }
  Future<String> getMeSomeFood() async {
    return "an apple";
  }
  Future<String> getMeSomethingBetter() async {
    return "a burger?";
  }
  Future<String> maybeSomethingSweet() async {
    return "a chocolate cake!!";
  }
  Future<String> bye() async{          //will not compile, add async
    return "see you soon! ";
  }
}
