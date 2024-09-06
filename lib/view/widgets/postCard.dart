import 'package:facebook_clone/models/utils/constans/color_constants.dart';
import 'package:facebook_clone/view/section/headerButtonSection.dart';
import 'package:facebook_clone/view/widgets/avatar.dart';
import 'package:facebook_clone/view/widgets/blueTick.dart';
import 'package:facebook_clone/view/widgets/headerButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class PostCard extends StatefulWidget {
  final String avatar;
  final String name;
  final String PublichedAt;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String shareCount;
  final String commentCount;

  PostCard({
    required this.avatar,
    required this.name,
    required this.PublichedAt,
    required this.postTitle,
    required this.postImage,
    this.showBlueTick = false,
    required this.likeCount,
    required this.shareCount,
    required this.commentCount,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSecetion(),
          imageSection(),
          footerSection(),
          Divider(
            color: Colors.grey[300],
            thickness: 1,
          ),
          HeaderButtonSection(
            buttonOne: headerButton(
                buttonText: "Like",
                buttonIcon:
                    isLiked ? Icons.thumb_up : Icons.thumb_up_alt_outlined,
                buttonAction: () {
                  setState(() {
                    isLiked = !isLiked;
                  });
                  print("Like this post");
                },
                buttonColor: isLiked ? Colors.blue : Colors.grey),
            buttonTwo: headerButton(
                buttonText: "Comment",
                buttonIcon: Icons.message_outlined,
                buttonAction: () {
                  print("comment on this post");
                },
                buttonColor: ColorConstants.grey),
            buttonThree: headerButton(
                buttonText: "Share",
                buttonIcon: Icons.share_outlined,
                buttonAction: () {
                  print("Share this post");
                },
                buttonColor: ColorConstants.grey),
          ),
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(
        color: Colors.grey[700],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 45,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration:
                      BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                  child: Icon(
                    Icons.thumb_up,
                    color: ColorConstants.mainWhite,
                    size: 10,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                displayText(label: widget.likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: widget.commentCount),
                SizedBox(
                  width: 5,
                ),
                displayText(label: "Comments"),
                SizedBox(
                  width: 10,
                ),
                displayText(label: widget.shareCount),
                SizedBox(
                  width: 10,
                ),
                displayText(label: "Shares"),
                SizedBox(width: 10),
                Avatar(
                  displayImage: widget.avatar,
                  displayStatus: false,
                  width: 25,
                  height: 25,
                ),
                IconButton(
                  onPressed: () {
                    print("Drop down pressed!");
                  },
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey[700],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(widget.postImage),
    );
  }

  Widget titleSecetion() {
    return widget.postTitle != null && widget.postTitle != ""
        ? Container(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: 5,
            ),
            child: Text(
              widget.postTitle == null ? "" : widget.postTitle,
              style: TextStyle(
                color: ColorConstants.black,
                fontSize: 16,
              ),
            ),
          )
        : SizedBox();
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(
        displayImage: widget.avatar,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(
            widget.name,
            style: TextStyle(color: ColorConstants.black),
          ),
          SizedBox(
            width: 10,
          ),
          widget.showBlueTick ? BluTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(widget.PublichedAt == null ? "" : widget.PublichedAt),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print("Open More menu!");
        },
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}
