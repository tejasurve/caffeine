import 'package:flutter/material.dart';
import 'package:caffeine_app/views/Tab/tabs.dart';
import 'package:caffeine_app/views/splash.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: SplashScreen());
  }
}
