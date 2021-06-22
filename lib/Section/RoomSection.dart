import 'package:flutter/material.dart';
import 'package:facebook_ui_clone/Widget/UserIcon.dart';
import 'package:facebook_ui_clone/assets.dart';

class RoomSection extends StatelessWidget{
  Widget Space= VerticalDivider(thickness: 1, color: Colors.white,);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      child: ListView(
        scrollDirection: Axis.horizontal,

        padding: EdgeInsets.all(9),
        children: <Widget>[
          OutlineButton.icon(
              shape: StadiumBorder(),
              borderSide: BorderSide(color: Colors.blue[50],
              width: 2),
              onPressed:(){
            print("create room");
          }, icon: Icon(Icons.home_filled,color: Colors.purple,),
              label: Text("Create\nRoom",style: TextStyle(
                color: Colors.blueAccent,
              ),)
          ),Space,
          UserIcon(image: Mohanlal,active: true,),Space,
          UserIcon(image: Nivinpauly,active:true),Space,
          UserIcon(image: Yash,active:true),Space,
          UserIcon(image: Dhoni,active:true),Space,
          UserIcon(image: Prithiviraj,active:true),Space,
          UserIcon(image: Virat,active: true),
        ],
      ),
    );
}}
