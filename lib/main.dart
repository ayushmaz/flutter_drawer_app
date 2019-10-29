import 'package:flutter/material.dart';

import 'DrawerList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Drawer"),
        ),
        drawer: Drawer(
          elevation: 11.0,
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Ayush Majumder"),
                accountEmail: Text("majumdershuvu@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    "A",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0),
                  ),
                ),
                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    child: Text(
                      "S",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    ),
                  ),
                ],
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0)),
                    gradient:
                        LinearGradient(colors: [Colors.pink, Colors.purple])),
              ),
              DrawerList("Movie" , Icons.movie),
              DrawerList("Music" , Icons.audiotrack),
              DrawerList("Code" , Icons.code),
              DrawerList("Bar" , Icons.local_bar)
            ],
          ),
        ),
      ),
    );
  }
}
