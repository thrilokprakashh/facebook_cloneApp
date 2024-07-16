import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/section/headerButtonSection.dart';
import 'package:facebook_clone/section/statusSection.dart';
import 'package:facebook_clone/section/storySection.dart';
import 'package:facebook_clone/widgets/circularButton.dart';
import 'package:facebook_clone/widgets/headerButton.dart';
import 'package:facebook_clone/widgets/postCard.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone/section/roomSection.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Facebook",
            style: TextStyle(
                color: Colors.blue, fontSize: 26, fontWeight: FontWeight.bold),
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
                buttonColor: Colors.red,
                buttonIcon: Icons.video_call,
                buttonText: "Live",
              ),
              buttonTwo: headerButton(
                buttonText: "Photo",
                buttonIcon: Icons.photo_library,
                buttonAction: () {
                  print("Take photo");
                },
                buttonColor: Colors.green,
              ),
              buttonThree: headerButton(
                  buttonText: "Room",
                  buttonIcon: Icons.video_call,
                  buttonAction: () {
                    print("Create photo");
                  },
                  buttonColor: Colors.purple),
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
