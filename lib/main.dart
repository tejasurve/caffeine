import 'package:flutter/material.dart';
import 'package:music_app/views/splash.dart';
import 'package:flutter/src/foundation/print.dart';

import 'config/Colors.dart';

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
