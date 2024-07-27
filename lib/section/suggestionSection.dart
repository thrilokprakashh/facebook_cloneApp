import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/widgets/suggestionCard.dart';
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
                  name: "Thrilok prakashan",
                  avatar: thrilok,
                  mutualFriends: "1 Mutual Friend",
                  addFriend: () {
                    print("Request Friend");
                  },
                  removeFriend: () {
                    print("RemovedFriend");
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
