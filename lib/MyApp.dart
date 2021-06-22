import 'package:flutter/material.dart';
import 'package:facebook_ui_clone/appBarButton/AppBarButton.dart';
import 'package:facebook_ui_clone/Section/StatusSection.dart';
import 'package:facebook_ui_clone/Section/HeaderButtonSection.dart';
import 'package:facebook_ui_clone/Section/RoomSection.dart';
import 'package:facebook_ui_clone/Section/StorySection.dart';
import 'Widget/PostCard.dart';

class App extends StatelessWidget {
  Widget thickDivder= Divider(thickness: 10,color: Colors.grey[300],);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "facebook",
          style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 34),
        ),
        elevation: 0,
        actions: [
          AppBarButton(
            buttonIcon: Icons.search,
            buttonAction: () {
              print("serch icon");
            },
          ),
          AppBarButton(
            buttonIcon: Icons.chat,
            buttonAction: () {
              print("chat clicked");
            },
          )
        ],
      ),
     body: ListView(
       children: <Widget>[
         StatusSection(),
         Divider(thickness: 1,color: Colors.grey[300],),
         HeaderButtionSection(),
         thickDivder,
         RoomSection(),
         thickDivder,
         StorySection(),
         thickDivder,
         Post(),
         Divider(thickness: 1,color: Colors.grey[300],),
         Post(),
         thickDivder,




       ],
     ),
    )
    );
  }
}
