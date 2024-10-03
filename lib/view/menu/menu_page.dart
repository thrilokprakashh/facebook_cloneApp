import 'package:facebook_clone/models/utils/constans/assets_constants.dart';
import 'package:facebook_clone/view/login_page/login_page.dart';
import 'package:facebook_clone/view/profile/profile.dart';
import 'package:facebook_clone/view/whtas_your_name/whats_ur_name_page.dart';
import 'package:facebook_clone/view/widgets/avatar.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

List stDataList = [
  {
    "title": "Settings",
    'icon': Icons.account_circle,
  },
  {
    "title": "Dark mode",
    "icon": Icons.dark_mode,
  },
  {
    "title": "Help",
    "icon": Icons.help_outline_outlined,
  },
  {
    "title": "About",
    "icon": Icons.book_outlined,
  },
  {
    "title": "Log out",
    "icon": Icons.login_outlined,
  },
];

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          "Menu",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 25,
            ),
          ),
          SizedBox(
            width: 5,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Avatar(displayImage: nivin, displayStatus: false),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Profile(),
                              ),
                            );
                          },
                          child: Text(
                            firstName,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          lastName,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 209, 203, 203),
                          child: Center(
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
                                    constraints: BoxConstraints(maxHeight: 220),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                              Avatar(
                                                  displayImage: nivin,
                                                  displayStatus: false),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                firstName,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 15),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                lastName,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 15),
                                              ),
                                              Spacer(),
                                              Icon(
                                                Icons.radio_button_checked,
                                                color: Colors.blue,
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
                                                    const Color.fromARGB(
                                                        255, 209, 203, 203),
                                                child: IconButton(
                                                  onPressed: () {},
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
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 209, 203, 203),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add),
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
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Invite friends",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          if (stDataList[index]["title"] == "Log out") {
                            {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text(
                                      "Log out?",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    content: Text(
                                      "Are you sure you want to log out?",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    actions: [
                                      TextButton(
                                        child: Text(
                                          "Yes",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        onPressed: () {
                                          Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => LoginPage(),
                                            ),
                                            (route) => false,
                                          );
                                        },
                                      ),
                                      SizedBox(
                                        width: 80,
                                      ),
                                      TextButton(
                                        child: Text(
                                          "No",
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                stDataList[index]["icon"],
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                stDataList[index]["title"],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 20,
                      ),
                  itemCount: 5)
            ],
          ),
        ),
      ),
    );
  }
}
