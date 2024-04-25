/*
 * Created on Mon Apr 14 2024
 * Created by Tejas Surve
 *
 * Copyright (c) Tejas Surve
 */

import 'package:flutter/material.dart';
import 'package:caffeine_app/config/Colors.dart';
import 'package:caffeine_app/views/Authentication/signIn.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3();
}

class _Screen3 extends State<Screen3> {
  @override
  void initState() {
    super.initState();
    debugPrint(fontColor.toString());
  }

  @override
  Widget build(BuildContext context) {
    navigateToSignIn() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const SignIn();
      }));
    }

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/onboarding3.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 54),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(),
                const Column(
                  children: [
                    Text(
                      "Unloack bean secrets",
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
                const SizedBox(),
                Column(
                  children: [
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: primaryColor),
                            borderRadius: BorderRadius.circular(10),
                            color: primaryColor),
                        width: double.infinity,
                        child: ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(primaryColor),
                              elevation: MaterialStatePropertyAll(0)),
                          onPressed: () {
                            // Add your onPressed function here
                            print('Button pressed');
                          },
                          child: const Text(
                            'Register',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Center(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(color: primaryColor, width: 3),
                            borderRadius: BorderRadius.circular(10)),
                        child: ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.transparent),
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.white),
                          ),
                          onPressed: () {
                            // Add your onPressed function here
                            navigateToSignIn();
                            print('Button pressed');
                          },
                          child: const Text(
                            'Sign in',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
