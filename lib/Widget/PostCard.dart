import 'dart:ui';

import 'package:flutter/Material.dart';
import 'package:facebook_ui_clone/Widget/UserIcon.dart';
import 'package:facebook_ui_clone/assets.dart';
import 'package:facebook_ui_clone/Widget/BlueTick.dart';
import 'package:flutter/cupertino.dart';
import 'package:facebook_ui_clone/Section/HeaderButtonSection.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 6),
      height: 700,
      width: MediaQuery.of(context).size.width,
      child: Column(children: [
        ListTile(
          title: PostHead(),
          leading: UserIcon(image: Dhoni),
          trailing: Icon(Icons.more_horiz),
          subtitle: TimTitle(),
        ),
        PostTitle(),
        PostImage(),
        PostBottom(),
        verticalDiv,
      ]),
    );
  }

  Widget PostHead() {
    return Row(children: [
      Text("Ms Dhoni"),
      SizedBox(
        width: 10,
      ),
      BlueTick(),
    ]);
  }

  Widget TimTitle() {
    return Row(
      children: [
        Text("5h"),
        SizedBox(
          width: 8,
        ),
        Icon(
          Icons.public,
          size: 14,
          color: Colors.black54,
        )
      ],
    );
  }

  Widget PostTitle() {
    return Container(
      child: Text(
        "hey all",
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 19),
      ),
    );
  }

  Widget PostImage() {
    return Container(
      margin: EdgeInsets.only(top: 5),
      height: 500,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(DhoniPost), fit: BoxFit.cover),
      ),
    );
  }

  Widget PostBottom() {
    return Container(
        padding: EdgeInsets.only(top: 10, left: 14),
        child: Row(
          children: [
            Icon(
              Icons.thumb_up,
              color: Colors.blue,
            ),
            SizedBox(
              width: 6,
            ),
            Text("10k"),
            SizedBox(
              width: 150,
            ),
            Text(
              "1k Comments",
              style: TextStyle(color: Colors.black54, fontSize: 14),
            ),
            SizedBox(
              width: 6,
            ),
            Text("85 Shares",
                style: TextStyle(color: Colors.black54, fontSize: 14))
          ],
        ));
  }
}
