import 'package:flutter/material.dart';
class AppBarButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;

  AppBarButton({this.buttonIcon, this.buttonAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.grey[350],
          shape: BoxShape.circle
      ),
      child: IconButton(
        icon: Icon(buttonIcon, color: Colors.black,),
        onPressed: buttonAction
        ,),
    );
  }}
