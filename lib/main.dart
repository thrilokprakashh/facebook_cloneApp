import 'package:facebook_clone/view/splash_screen/splash_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

String email = "";
String password = "";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
