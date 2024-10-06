import 'dart:io';

import 'package:facebook_clone/models/utils/constans/assets_constants.dart';
import 'package:facebook_clone/view/join_facebook/join_facebook.dart';
import 'package:facebook_clone/view/tab_bar/Photos_page.dart';
import 'package:facebook_clone/view/tab_bar/posts_page.dart';
import 'package:facebook_clone/view/tab_bar/reels_pages.dart';
import 'package:facebook_clone/view/whtas_your_name/whats_ur_name_page.dart';
import 'package:facebook_clone/view/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

String? imagePath;

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Text(
              firstName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              lastName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              width: 35,
            ),
            TextButton(
              onPressed: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  context: context,
                  builder: (context) => ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 220),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              "Your Page and profiles",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Avatar(displayImage: nivin, displayStatus: false),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                firstName,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 15),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                lastName,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 15),
                              ),
                              Spacer(),
                              Icon(
                                Icons.radio_button_checked,
                                color: Colors.blue[900],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              CircleAvatar(
                                radius: 25,
                                backgroundColor:
                                    const Color.fromARGB(255, 209, 203, 203),
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => JoinFacebook(),
                                      ),
                                    );
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    size: 30,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Create another profile",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              child: Text(
                "Your profile",
                style: TextStyle(
                    fontWeight: FontWeight.w500, color: Colors.blue[900]),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            SizedBox(
              width: 5,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: imagePath != null
                            ? Image.file(
                                File(imagePath!),
                              ).image
                            : NetworkImage(
                                "https://i.pinimg.com/564x/d3/96/a5/d396a57e05b8cf013040472c5d9fc6eb.jpg"),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                context: context,
                                builder: (context) => ConstrainedBox(
                                  constraints: BoxConstraints(maxHeight: 170),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            CircleAvatar(
                                              radius: 25,
                                              backgroundColor: Colors.grey[300],
                                              child: Icon(Icons.camera_alt),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            TextButton(
                                              onPressed: () async {
                                                final ImagePicker picker =
                                                    ImagePicker();
                                                final XFile? uploadImage =
                                                    await picker.pickImage(
                                                        source:
                                                            ImageSource.camera);
                                                if (uploadImage != null) {
                                                  print(uploadImage.toString());
                                                  imagePath = uploadImage.path;
                                                  setState(() {});
                                                }
                                              },
                                              child: Text(
                                                "Take Photo",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 15,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 25,
                                              backgroundColor: Colors.grey[300],
                                              child: Icon(
                                                Icons.folder_open,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            TextButton(
                                              onPressed: () async {
                                                final ImagePicker picker =
                                                    ImagePicker();
                                                final XFile? uploadImage =
                                                    await picker.pickImage(
                                                        source: ImageSource
                                                            .gallery);
                                                if (uploadImage != null) {
                                                  print(uploadImage.toString());
                                                  imagePath = uploadImage.path;
                                                  setState(() {});
                                                }
                                              },
                                              child: Text(
                                                "Upload Photo",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            icon: Icon(Icons.camera_alt),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 15,
                    bottom: 10,
                    child: Stack(
                      children: [
                        Avatar(
                          displayImage: nivin,
                          displayStatus: false,
                          height: 150,
                          width: 150,
                          displayBorder: true,
                        ),
                        SizedBox(
                          height: 80,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  children: [
                    Text(
                      firstName,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      lastName,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.blue[700],
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Add to story",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Icon(Icons.edit),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Edit profile",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(Icons.more_horiz),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 7,
              ),
              SizedBox(
                height: 5,
              ),
              TabBar(
                isScrollable: false,
                labelColor: Colors.blue,
                indicatorColor: Colors.blue,
                unselectedLabelColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 3,
                dividerHeight: 0,
                labelStyle:
                    TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                tabs: [
                  Tab(
                    text: "Posts",
                  ),
                  Tab(
                    text: "Photos",
                  ),
                  Tab(
                    text: "Reels",
                  ),
                ],
              ),
              SizedBox(
                height: 500,
                child: TabBarView(
                  children: [
                    PostsPage(),
                    PhotosPage(),
                    ReelsPages(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
