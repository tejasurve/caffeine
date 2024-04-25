import 'package:flutter/material.dart';
import 'package:caffeine_app/config/Colors.dart';
import 'package:caffeine_app/views/Home/home.dart';
import 'package:caffeine_app/views/Tab/motion_tab_bar.dart';
import 'package:caffeine_app/views/Tab/motion_tab_controller.dart';

void main() => runApp(const Tabs());

class Tabs extends StatelessWidget {
  const Tabs({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  // TabController? _tabController;
  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    super.initState();
    //// Use normal tab controller
    // _tabController = TabController(
    //   initialIndex: 1,
    //   length: 4,
    //   vsync: this,
    // );

    //// use "MotionTabBarController" to replace with "TabController", if you need to programmatically change the tab
    _motionTabBarController = MotionTabBarController(
      initialIndex: 0,
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _motionTabBarController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MotionTabBar(
        controller:
            _motionTabBarController, // ADD THIS if you need to change your tab programmatically
        initialSelectedTab: "Dashboard",
        useSafeArea: true, // default: true, apply safe area wrapper
        labels: const ["Dashboard", "Home", "Profile", "Settings"],
        icons: const [
          Icons.home_outlined,
          Icons.shopping_cart_outlined,
          Icons.favorite_outline,
          Icons.person_outline
        ],

        // optional badges, length must be same with labels
        tabSize: 50,
        tabBarHeight: 55,
        textStyle: const TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        tabIconColor: fontColor,
        tabIconSize: 28.0,
        tabIconSelectedSize: 26.0,
        tabSelectedColor: bgColor,
        tabIconSelectedColor: Colors.white,
        tabBarColor: primaryColor,
        onTabItemSelected: (int value) {
          setState(() {
            _motionTabBarController!.index = value;
          });
        },
      ),
      body: TabBarView(
        physics:
            const NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
        controller: _motionTabBarController,
        children: const <Widget>[
          Home(),
          Placeholder(),
          Placeholder(),
          Placeholder(),
        ],
      ),
    );
  }
}

class MainPageContentComponent extends StatelessWidget {
  const MainPageContentComponent({
    required this.title,
    required this.controller,
    Key? key,
  }) : super(key: key);

  final String title;
  final MotionTabBarController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: bgColor),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 50),
            const Text('Go to "X" page programmatically'),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => controller.index = 0,
              child: const Text('Dashboard Page'),
            ),
            ElevatedButton(
              onPressed: () => controller.index = 1,
              child: const Text('Home Page'),
            ),
            ElevatedButton(
              onPressed: () => controller.index = 2,
              child: const Text('Profile Page'),
            ),
            ElevatedButton(
              onPressed: () => controller.index = 3,
              child: const Text('Settings Page'),
            ),
          ],
        ),
      ),
    );
  }
}
