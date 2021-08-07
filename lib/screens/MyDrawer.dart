import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 2,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          drawerHeader(),
          ListTile(
            title: Row(
              children: [
                Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/qr_sample.jpg"),
                            fit: BoxFit.fill
                        )
                    )
                ),Text('Item 23')
              ],
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {

            },
          ),
        ],
      ),
    );
  }

  Widget drawerHeader(){
    return DrawerHeader(
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(2))
            ),
            child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 1.0,
                        spreadRadius: 0.0,
                        offset: Offset(2.0, 2.0), // shadow direction: bottom right
                      )
                    ],
                    image: DecorationImage(
                        image: AssetImage("images/qr_sample.jpg"),
                        fit: BoxFit.fill
                    )
                )
            ),
          )
        ],
      ),
    );
  }
}
