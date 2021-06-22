import 'package:flutter/material.dart';
import 'package:facebook_ui_clone/assets.dart';
import 'package:facebook_ui_clone/Widget/UserIcon.dart';
class StatusSection extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:UserIcon(image: Mohanlal) ,
      title: TextField(decoration: InputDecoration(
        hintText: "write something here...",
        hintStyle: TextStyle(color: Colors.black),
        enabledBorder:InputBorder.none,
        focusedBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder:InputBorder.none,

      ),
      ),
    );
  }
}