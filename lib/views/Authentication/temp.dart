import 'package:flutter/material.dart';
import 'package:music_app/views/Authentication/screen1.dart';
import 'package:music_app/views/Authentication/screen2.dart';
import 'package:music_app/views/Authentication/screen3.dart';

class MyWidget extends StatelessWidget {
  final _contoller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: _contoller,
              children: const [
                Screen1(),
                Screen2(),
                Screen3(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
