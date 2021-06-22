import 'package:facebook_ui_clone/appBarButton/AppBarButton.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui_clone/assets.dart';
import 'package:facebook_ui_clone/appBarButton/AppBarButton.dart';

class StoryCard extends StatelessWidget {
  final String title;
  Widget storyHead;
  final String story;
  StoryCard({this.title, this.story, this.storyHead});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      margin: EdgeInsets.only(left: 8, right: 0, top: 4, bottom: 4),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(left: 5, top: 6, child: storyHead),
          Positioned(
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
            left: 6,
            bottom: 6.8,
          )
        ],
      ),
    );
  }
}
