import 'package:facebook_clone/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SuggestionCard extends StatelessWidget {
  const SuggestionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          suggestionImage(),
          suggestionDetails(),
        ],
      ),
    );
  }

  Widget suggestionDetails() {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        height: 140,
        color: Colors.grey[200],
        child: Column(
          children: [
            ListTile(
              title: Text("Thrilok prakashan"),
              subtitle: Text("4 Mutual friends"),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconButton(
                    buttonAction: () {
                      print("Request friendship");
                    },
                    buttonIcon: Icons.add_moderator,
                    buttonColor: Colors.blue,
                    buttonTextColor: Colors.white,
                    buttonIconColor: Colors.white,
                    buttonText: "Add Friend",
                  ),
                  blankButton(
                      buttonAction: () {
                        print("Remove suggestion");
                      },
                      buttonText: "Remove",
                      buttonColor: Colors.grey,
                      buttonTextColor: Colors.black)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget blankButton({
  required Function() buttonAction,
  required String buttonText,
  required Color buttonColor,
  required Color buttonTextColor,
}) {
  return TextButton(
    onPressed: buttonAction,
    style: ButtonStyle(backgroundColor: WidgetStateProperty.all(buttonColor)),
    child: Text(
      buttonText,
      style: TextStyle(color: buttonTextColor),
    ),
  );
}

Widget iconButton({
  required void Function() buttonAction,
  required IconData buttonIcon,
  required Color buttonColor,
  required Color buttonTextColor,
  required Color buttonIconColor,
  required String buttonText,
}) {
  return TextButton.icon(
      icon: Icon(
        buttonIcon,
        color: buttonIconColor,
      ),
      label: Text(
        buttonText,
        style: TextStyle(
          color: buttonTextColor,
        ),
      ),
      style: ButtonStyle(backgroundColor: WidgetStateProperty.all(buttonColor)),
      onPressed: buttonAction);
}

Widget suggestionImage() {
  return Positioned(
    top: 0,
    left: 0,
    right: 0,
    child: ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      child: Image.asset(
        thrilok,
        height: 250,
        fit: BoxFit.cover,
      ),
    ),
  );
}
