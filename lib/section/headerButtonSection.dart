import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HeaderButtonSection extends StatelessWidget {
  Widget headerButton({
    @required buttonText,
    @required ButtonIcon,
    required Function() buttonAction,
    required Color buttonColor,
  }) {
    return TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        ButtonIcon,
        color: buttonColor,
      ),
      label: Text(buttonText),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget verticalDivider = VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
              buttonAction: () {
                print("Go Live");
              },
              ButtonIcon: Icons.video_call,
              buttonColor: Colors.red,
              buttonText: "Live"),
          verticalDivider,
          headerButton(
              buttonAction: () {
                print("Take photo");
              },
              ButtonIcon: Icons.photo_library,
              buttonColor: Colors.green,
              buttonText: "Photo"),
          verticalDivider,
          headerButton(
              buttonAction: () {
                print("Create Chat Room!");
              },
              ButtonIcon: Icons.video_call,
              buttonColor: Colors.purple,
              buttonText: "Room"),
        ],
      ),
    );
  }
}
