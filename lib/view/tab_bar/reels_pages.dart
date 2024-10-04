import 'package:flutter/material.dart';

class ReelsPages extends StatefulWidget {
  const ReelsPages({super.key});

  @override
  State<ReelsPages> createState() => _ReelsPagesState();
}

class _ReelsPagesState extends State<ReelsPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
              child: Column(
                children: [
                  Icon(
                    Icons.photo,
                    size: 100,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "No reels yet",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
