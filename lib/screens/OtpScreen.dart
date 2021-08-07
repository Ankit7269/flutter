import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tutorial/screens/MyDrawer.dart';
import 'package:flutter_tutorial/utils/CustomColors.dart';

class Otp extends StatefulWidget {
  @override
  OtpState_ createState() => OtpState_();
}

class OtpState_ extends State<Otp> {
  BuildContext context;
  bool _isEditingText = false;
  TextEditingController _editingController;
  String initialText = "";

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return WillPopScope(
        onWillPop: () {
          Navigator.pop(context);
        },
      child: Scaffold(
          drawerEnableOpenDragGesture:true,
          drawer: MyDrawer(),
          resizeToAvoidBottomInset: false,
          body: Main(),
          // body: SingleChildScrollView(),
      ),
    );
  }

  Widget Main() {
    return SingleChildScrollView(
      child: Container(
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
              customAppBar(),
              topPart(),
              bottomPart()
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {

    print("Hello World");
    super.initState();
    _editingController = TextEditingController(text: initialText);
  }

  Widget pinText(){
    return Text(
      "",
      style: TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.bold
      ),
    );
  }

  Widget pinRow(){
    return Container(
      height: 35,
      width: MediaQuery.of(context).size.width,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: CustomColors.borderColor,
                ),
                borderRadius: BorderRadius.all(Radius.circular(7))
            ),
            margin: EdgeInsets.only(left: 10),
            child: _editTitleTextField(),
          ),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: CustomColors.borderColor,
                ),
                borderRadius: BorderRadius.all(Radius.circular(7))
            ),
            margin: EdgeInsets.only(left: 10),
            child: _editTitleTextField(),
          ),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: CustomColors.borderColor,
                ),
                borderRadius: BorderRadius.all(Radius.circular(7))
            ),
            margin: EdgeInsets.only(left: 10),
            child: _editTitleTextField(),
          ),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: CustomColors.borderColor,
                ),
                borderRadius: BorderRadius.all(Radius.circular(7))
            ),
            margin: EdgeInsets.only(left: 10),
            child: _editTitleTextField(),
          )
        ],
      ),
    );
  }

  Widget topPart(){
    return Expanded(
        flex: 2,
        child: Container(
          padding: EdgeInsets.only(left: 10,right: 10),
          alignment: Alignment.centerLeft,
          child: Container(
            // color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.blueGrey,
                  child: Text(
                    "Enter OTP",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal
                    ),
                  ),
                ),
                pinRow()
              ],
            ),
          )
        )
    );
  }

  Widget bottomPart(){
    return Expanded(
        flex: 1,
        child: Container(
          color: Colors.green,
        )
    );
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

  @override
  void dispose() {
    _editingController.dispose();
    super.dispose();
  }

  Widget _editTitleTextField() {
    if (_isEditingText)
      return Container(
        child: TextField(
          maxLength: 1,
          decoration: InputDecoration(
            counterText: "",
          ),
          maxLines: 1,
          textAlign: TextAlign.center,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          cursorColor: Colors.grey,
          style: TextStyle(
              color: Colors.grey,
              letterSpacing: 1,
              decorationThickness: 0,
              decoration: TextDecoration.none
          ),
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

}
