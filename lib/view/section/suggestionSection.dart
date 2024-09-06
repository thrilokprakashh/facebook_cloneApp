import 'package:facebook_clone/models/utils/constans/assets_constants.dart';
import 'package:facebook_clone/view/widgets/suggestionCard.dart';

import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text("People you may know"),
            trailing: IconButton(
              onPressed: () {
                print("more clicked");
              },
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey[700],
              ),
            ),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  name: "Thrilok prakashan",
                  avatar: thrilok,
                  mutualFriends: "1 Mutual Friend",
                  addFriend: () {
                    print("Request Friend");
                  },
                  removeFriend: () {
                    print("RemovedFriend");
                  },
                ),
                SuggestionCard(
                  name: "iamstrell",
                  avatar: strell,
                  mutualFriends: "8 Mutual Friend",
                  addFriend: () {
                    print("Request Friend");
                  },
                  removeFriend: () {
                    print("RemovedFriend");
                  },
                ),
                SuggestionCard(
                  name: "sebin cyriac",
                  avatar: fishingfreak,
                  mutualFriends: " ",
                  addFriend: () {
                    print("Request Friend");
                  },
                  removeFriend: () {
                    print("RemovedFriend");
                  },
                ),
                SuggestionCard(
                  name: "sujithbhakthan",
                  avatar: sujith,
                  mutualFriends: "3 Mutual Friend",
                  addFriend: () {
                    print("Request Friend");
                  },
                  removeFriend: () {
                    print("RemovedFriend");
                  },
                ),
                SuggestionCard(
                  name: "nikhilayyankovil",
                  avatar: nikhil,
                  mutualFriends: "2 Mutual Friend",
                  addFriend: () {
                    print("Request Friend");
                  },
                  removeFriend: () {
                    print("RemovedFriend");
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
