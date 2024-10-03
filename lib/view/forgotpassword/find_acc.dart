import 'package:facebook_clone/view/checkNumber/check_No_screen.dart';

import 'package:facebook_clone/view/forgotpassword/forgot_password.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field2/intl_phone_field.dart';

class FindAcc extends StatefulWidget {
  const FindAcc({super.key});

  @override
  State<FindAcc> createState() => _FindAccState();
}

GlobalKey<FormState> _formKey = GlobalKey();
FocusNode focusNode = FocusNode();

class _FindAccState extends State<FindAcc> {
  String? _phoneNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Find your account',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                " Enter your Mobile number",
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 13),
              ),
              SizedBox(
                height: 30,
              ),
              IntlPhoneField(
                focusNode: focusNode,
                decoration: InputDecoration(
                  labelText: "Mobile number",
                  labelStyle: TextStyle(color: Colors.black54),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black38),
                  ),
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(10),
                ],
                onChanged: (phone) {
                  _phoneNumber = phone.completeNumber;
                },
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                    padding: WidgetStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                    ),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  onPressed: () {
                    _formKey.currentState?.validate();
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CheckNoScreen(),
                        ),
                      );
                    }
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotPassword(),
                      ),
                    );
                  },
                  child: Text(
                    "Search by email instead",
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
