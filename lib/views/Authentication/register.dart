/*
 * Created on Mon Apr 15 2024
 * Created by Tejas Surve
 *
 * Copyright (c) Tejas Surve
 */
/*
 * Created on Mon Apr 15 2024
 * Created by Tejas Surve
 *
 * Copyright (c) Tejas Surve
 */
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_app/config/Colors.dart';
import 'package:music_app/views/Authentication/signIn.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  navigateToLogin() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return const SignIn();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/auth.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Column(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/coffeeMug.svg",
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        const Text(
                          "Register Your account",
                          style: TextStyle(
                            fontSize: 24,
                            color: fontColor,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFF16181C),
                          ),
                          width: double.infinity,
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            cursorColor: fontColor,
                            style: const TextStyle(
                              color: fontColor,
                            ),
                            decoration: const InputDecoration(
                              hintText: "Full Name",
                              hintStyle: TextStyle(
                                color: Color(0xFF828282),
                              ),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 16),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFF16181C),
                          ),
                          width: double.infinity,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: fontColor,
                            style: const TextStyle(color: fontColor),
                            decoration: const InputDecoration(
                              hintText: "E-mail Address",
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 16),
                              hintStyle: TextStyle(
                                color: Color(0xFF828282),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFF16181C),
                          ),
                          width: double.infinity,
                          child: TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            cursorColor: fontColor,
                            style: const TextStyle(color: fontColor),
                            decoration: const InputDecoration(
                              hintText: "Password",
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 16),
                              hintStyle: TextStyle(
                                color: Color(0xFF828282),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFF16181C),
                          ),
                          width: double.infinity,
                          child: TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            cursorColor: fontColor,
                            style: const TextStyle(color: fontColor),
                            decoration: const InputDecoration(
                              hintText: "Confirm Password",
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 16),
                              hintStyle: TextStyle(
                                color: Color(0xFF828282),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
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
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                                color: bgColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Column(
                children: [
                  const Stack(
                    alignment: Alignment.center,
                    children: [
                      Divider(
                        color: primaryColor,
                        thickness: 2,
                      ),
                      Material(
                        color: Colors.black,
                        child: Text(
                          "Or Register with",
                          style: TextStyle(
                            color: fontColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff101215),
                          child: InkWell(
                            onTap: () => {print("f")},
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              child: SvgPicture.asset(
                                  "assets/icons/facebook.svg",
                                  width: 30,
                                  height: 25),
                            ),
                          ),
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff101215),
                          child: InkWell(
                            onTap: () => {print("f")},
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              child: SvgPicture.asset("assets/icons/google.svg",
                                  width: 30, height: 25),
                            ),
                          ),
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff101215),
                          child: InkWell(
                            onTap: () => {print("f")},
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: SvgPicture.asset(
                                  "assets/icons/twitter.svg",
                                  width: 30,
                                  height: 25),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account ? ",
                        style: TextStyle(
                          color: fontColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            navigateToLogin();
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
