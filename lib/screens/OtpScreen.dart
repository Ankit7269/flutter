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
            customAppBar()
          ],
        ),
      ),
    );
  }

  @override
  void initState() {

    print("Hello World");
    super.initState();

  }

  Widget customAppBar(){
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 10),
      margin: EdgeInsets.only(top: 25),
      width: MediaQuery.of(context).size.width,
      height: AppBar().preferredSize.height,
      color: Colors.transparent,
      child: Text(
        "OTP Verification",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey
        ),
      ),
    );
  }

}
