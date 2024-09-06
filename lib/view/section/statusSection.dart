import 'package:facebook_clone/models/utils/constans/color_constants.dart';
import 'package:facebook_clone/view/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone/assets.dart';

class Statussection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
        displayImage: nivin,
        displayStatus: false,
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText: "Whats on your mind?",
          hintStyle: TextStyle(color: ColorConstants.black),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
