import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui_clone/assets.dart';
import 'package:facebook_ui_clone/Widget/StoryCard.dart';
import 'package:facebook_ui_clone/appBarButton/AppBarButton.dart';
import 'package:facebook_ui_clone/Widget/UserIcon.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
              title: "Add Story",
              story: Mohanlal,
              storyHead: AppBarButton(
                buttonAction: () {
                  print("add Story");
                },
                buttonIcon: Icons.add,
              )),
          StoryCard(
            title: "Nivin Pauly",
            story: NivinStory,
            storyHead: UserIcon(image: Nivinpauly,storySection: true,),
          ),
          StoryCard(
            title: "Yash",
            story: YashStory,
            storyHead: UserIcon(image: Yash,storySection: true,),
          ),
          StoryCard(
            title:"Prithiviraj",
            story:PrithivirajStory,
            storyHead: UserIcon(image: Prithiviraj,storySection: true,),
          ),
          StoryCard(
            title: "Dhoni",
            story: DhoniStory,
            storyHead: UserIcon(image: Dhoni,storySection: true,),
          ),
          StoryCard(
            title: "Virat",
          story: ViratStory,
            storyHead: UserIcon(image: Virat,storySection: true,),
          )
        ],
      ),
    );
  }
}
