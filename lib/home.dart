import 'package:facebook_clone/section/headerButtonSection.dart';
import 'package:facebook_clone/section/statusSection.dart';
import 'package:facebook_clone/section/storySection.dart';
import 'package:facebook_clone/widgets/circularButton.dart';
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
          backgroundColor: Color.fromARGB(255, 251, 250, 250),
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
            HeaderButtonSection(),
            thickDivider,
            RoomSection(),
            thickDivider,
            Storysection(),
            thickDivider,
          ],
        ),
      ),
    );
  }
}
