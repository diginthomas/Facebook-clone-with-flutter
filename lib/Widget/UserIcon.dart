import 'package:flutter/material.dart';

class UserIcon extends StatelessWidget {
  final String image;
  bool active;
  bool storySection;
  UserIcon({this.image, this.active = false,this.storySection=false});
  Widget onlineIndicatior() {
    if (this.active == true) {
      return Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                )),
          ));
    } else {
      return SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color:storySection? Colors.blueAccent:Colors.white,width: 4)
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              image,
              width: 50,
              height: 50,
            ),
          ),
          onlineIndicatior(),
        ],
      ),
    );
  }
}
