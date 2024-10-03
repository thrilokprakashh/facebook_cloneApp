import 'package:facebook_clone/view/login_page/login_page.dart';
import 'package:facebook_clone/view/whats_ur_bd/whats_ur_bd_page.dart';
import 'package:flutter/material.dart';

class WhatsUrNamePage extends StatefulWidget {
  const WhatsUrNamePage({super.key});

  @override
  State<WhatsUrNamePage> createState() => _WhatsUrNamePageState();
}

final _formKey = GlobalKey<FormState>();
TextEditingController _firstNameController = TextEditingController();
TextEditingController _lastNameController = TextEditingController();
String firstName = "";
String lastName = "";

class _WhatsUrNamePageState extends State<WhatsUrNamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "What's your name?",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Enter the name you use in real life.",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _firstNameController,
                      decoration: InputDecoration(
                        labelText: " First name",
                        labelStyle: TextStyle(color: Colors.black54),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black38),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' enter your first name';
                        }

                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: _lastNameController,
                      decoration: InputDecoration(
                        labelText: "Last name",
                        labelStyle: TextStyle(color: Colors.black54),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black38),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' enter your last name';
                        }

                        return null;
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    firstName = _firstNameController.text;
                    lastName = _lastNameController.text;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WhatsUrBdPage(),
                      ),
                    );
                  }
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
                      "Next",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                      (route) => false,
                    );
                  },
                  child: Text(
                    "I already have an account",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
