import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/view/widgets/storyCard.dart';

import 'package:flutter/material.dart';

class Storysection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Storycard(
            labelText: "Add To Story",
            avatar: nivin,
            story: nivin,
            createStoryStatus: true,
          ),
          Storycard(
            labelText: "fahadh faasil",
            avatar: fahadh,
            story: fpic,
            displayBorder: true,
          ),
          Storycard(
            labelText: "Dulquer",
            avatar: dulquer,
            story: dq1,
            displayBorder: true,
          ),
          Storycard(
            labelText: "Mohanlal",
            avatar: mohanlal,
            story: lal1,
            displayBorder: true,
          ),
          Storycard(
            labelText: "Mammootty",
            avatar: mammootty,
            story: mom1,
            displayBorder: true,
          ),
          Storycard(
            labelText: "Vinayakan",
            avatar: vinayakan,
            story: vin1,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
