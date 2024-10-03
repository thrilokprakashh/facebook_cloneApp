import 'package:facebook_clone/models/utils/constans/assets_constants.dart';
import 'package:facebook_clone/view/login_page/login_page.dart';
import 'package:facebook_clone/view/whtas_your_name/whats_ur_name_page.dart';
import 'package:flutter/material.dart';

class JoinFacebook extends StatefulWidget {
  const JoinFacebook({super.key});

  @override
  State<JoinFacebook> createState() => _JoinFacebookState();
}

class _JoinFacebookState extends State<JoinFacebook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Join Facebook',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(join), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Create an account to connect with friends, family and communities of people who share your interests.",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WhatsUrNamePage(),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Center(
                  child: Text(
                    "Get started",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                  (route) => false,
                );
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 1),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Center(
                  child: Text(
                    "I already have an account",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
