/*
 * Created on Mon Apr 14 2024
 * Created by Tejas Surve
 *
 * Copyright (c) Tejas Surve
 */
import 'package:flutter/material.dart';
import 'package:music_app/config/Colors.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1();
}

class _Screen1 extends State<Screen1> {
  @override
  void initState() {
    super.initState();
    debugPrint(fontColor.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/onboarding1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          
          const Padding(
            padding: EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "Embrace coffee essence",
                      style: TextStyle(
                        fontSize: 35,
                        color: fontColor,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet consectetur. Vestibulum eget blandit mattis",
                      style: TextStyle(
                        fontSize: 14,
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox()
              ],
            ),
          )
        ],
      ),
    );
  }
}
