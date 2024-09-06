import 'package:facebook_clone/models/utils/constans/assets_constants.dart';
import 'package:facebook_clone/models/utils/constans/color_constants.dart';
import 'package:facebook_clone/view/section/headerButtonSection.dart';
import 'package:facebook_clone/view/section/roomSection.dart';
import 'package:facebook_clone/view/section/statusSection.dart';
import 'package:facebook_clone/view/section/storySection.dart';
import 'package:facebook_clone/view/section/suggestionSection.dart';
import 'package:facebook_clone/view/widgets/circularButton.dart';
import 'package:facebook_clone/view/widgets/headerButton.dart';
import 'package:facebook_clone/view/widgets/postCard.dart';

import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: ColorConstants.grey.withOpacity(.3),
    );
    Widget thickDivider = Divider(
      thickness: 10,
      color: ColorConstants.grey.withOpacity(.3),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstants.mainWhite,
          title: Text(
            "Facebook",
            style: TextStyle(
                color: ColorConstants.primaryColor,
                fontSize: 26,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            CircularButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print("Search screen appears!");
              },
            ),
            CircularButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print(" messenger appears!");
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            Statussection(),
            thinDivider,
            HeaderButtonSection(
              buttonOne: headerButton(
                buttonAction: () {
                  print("Go live!!");
                },
                buttonColor: ColorConstants.buttonOne,
                buttonIcon: Icons.video_call,
                buttonText: "Live",
              ),
              buttonTwo: headerButton(
                buttonText: "Photo",
                buttonIcon: Icons.photo_library,
                buttonAction: () {
                  print("Take photo");
                },
                buttonColor: ColorConstants.buttonTwo,
              ),
              buttonThree: headerButton(
                  buttonText: "Room",
                  buttonIcon: Icons.video_call,
                  buttonAction: () {
                    print("Create photo");
                  },
                  buttonColor: ColorConstants.buttonThree),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            Storysection(),
            thickDivider,
            PostCard(
              name: "Mohanlal",
              avatar: mohanlal,
              PublichedAt: "5h",
              postTitle: " Good old days !!",
              postImage: lal1,
              showBlueTick: true,
              likeCount: "10k",
              shareCount: "1k",
              commentCount: "1k",
            ),
            thickDivider,
            PostCard(
              name: "Vinayakan",
              avatar: vinayakan,
              PublichedAt: "1 day ago",
              postTitle: "",
              postImage: vin1,
              showBlueTick: true,
              likeCount: "3k",
              shareCount: "1k",
              commentCount: "1k",
            ),
            thickDivider,
            PostCard(
              name: "Dulquer",
              avatar: dulquer,
              PublichedAt: "Nov 10",
              postTitle: junctionTile,
              postImage: dq1,
              showBlueTick: true,
              likeCount: "7k",
              shareCount: "1.5k",
              commentCount: "4k",
            ),
            thickDivider,
            SuggestionSection(),
            thickDivider,
            PostCard(
              name: "Mammootty",
              avatar: mammootty,
              PublichedAt: "Nov 18",
              postTitle: "",
              postImage: mom1,
              showBlueTick: true,
              likeCount: "9k",
              shareCount: "3k",
              commentCount: "4.6k",
            ),
            thickDivider,
            PostCard(
              name: "Prithviraj",
              avatar: prithviraj,
              PublichedAt: "3hr",
              postTitle: "",
              postImage: the1,
              showBlueTick: true,
              likeCount: "2k",
              shareCount: "1k",
              commentCount: "1.1k",
            ),
          ],
        ),
      ),
    );
  }
}
