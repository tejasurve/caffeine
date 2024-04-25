/*
 * Created on Mon Apr 13 2024
 * Created by Tejas Surve
 *
 * Copyright (c) Tejas Surve
 */
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:music_app/views/Authentication/getStarted.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  get splash => null;
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 3500,
      splash: Center(
        child: LottieBuilder.asset("assets/animated/loading_3.json"),
      ),
      nextScreen: const GetStarted(),
      splashIconSize: 500,
      backgroundColor: const Color.fromARGB(255, 232, 206, 179),
    );
  }
}
