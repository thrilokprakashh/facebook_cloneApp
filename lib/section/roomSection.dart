import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(
            displayImage: nivin,
            displayStatus: true,
          ),
          Avatar(
            displayImage: fahadh,
            displayStatus: true,
          ),
          Avatar(
            displayImage: dulquer,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mohanlal,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mammootty,
            displayStatus: true,
          ),
          Avatar(
            displayImage: vinayakan,
            displayStatus: true,
          ),
          Avatar(
            displayImage: strell,
            displayStatus: true,
          ),
          Avatar(
            displayImage: prithviraj,
            displayStatus: true,
          ),
          Avatar(
            displayImage: fishingfreak,
            displayStatus: true,
          ),
          Avatar(
            displayImage: sujith,
            displayStatus: true,
          ),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: OutlinedButton.icon(
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          "Create \n Room",
          style: TextStyle(color: Colors.blue),
        ),
        onPressed: () {
          print("create chat room");
        },
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.blue[100]!, width: 2),
        ),
      ),
    );
  }
}
