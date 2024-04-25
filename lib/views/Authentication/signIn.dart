/*
 * Created on Mon Apr 15 2024
 * Created by Tejas Surve
 *
 * Copyright (c) Tejas Surve
 */

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_app/config/Colors.dart';
import 'package:music_app/views/Authentication/register.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  navigateToRegister() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return const Register();
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
                          "Welcome to Login",
                          style: TextStyle(
                            fontSize: 35,
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
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: fontColor,
                            style: const TextStyle(
                              color: fontColor,
                            ),
                            decoration: const InputDecoration(
                              hintText: "E-mail Address",
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
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {
                                  print("clicked");
                                },
                                child: const Text(
                                  "Forget Password?",
                                  style: TextStyle(
                                    color: primaryColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
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
                              'Sign in',
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
                          "Or Login with",
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
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    height: 64,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account ? ",
                        style: TextStyle(
                          color: fontColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            navigateToRegister();
                          },
                          child: const Text(
                            "Register",
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
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
