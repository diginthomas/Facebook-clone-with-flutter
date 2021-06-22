import 'package:flutter/material.dart';
class HeaderButtionSection extends StatelessWidget{
  Widget verticalDiv=  VerticalDivider(thickness: 1,color: Colors.grey[300]);
  Widget headerButton({
    String buttonText,
    IconData buttonIcon,
     void Function() buttonAction,
    Color buttonColor})
  {
    return FlatButton.icon(onPressed:buttonAction,
        icon: Icon(buttonIcon,color:buttonColor),
        label:Text(buttonText));
  }  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         headerButton(buttonAction: (){
           print("go live");
         },buttonColor: Colors.red,
           buttonIcon: Icons.video_call,
           buttonText: "Live"
         ),verticalDiv,
          headerButton(buttonAction: (){
            print("photos");},
            buttonIcon: Icons.photo_library_sharp,
           buttonColor: Colors.green,
           buttonText: "Photos"),
          verticalDiv,
          headerButton(buttonText:"Room",
          buttonColor: Colors.purple,
            buttonIcon: Icons.home_filled
          ),
          verticalDiv,

        ],
      ),
    );
  }
}