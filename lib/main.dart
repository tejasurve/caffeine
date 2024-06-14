import 'package:caffeine_app/common-widget/loading.dart';
import 'package:caffeine_app/firebase_options.dart';
import 'package:caffeine_app/view_models/loading_view_modal.dart';
import 'package:caffeine_app/views/Authentication/authPage.dart';
import 'package:caffeine_app/views/Authentication/getStarted.dart';
import 'package:caffeine_app/views/Authentication/signIn.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:caffeine_app/views/Tab/tabs.dart';
import 'package:caffeine_app/views/splash.dart';
import 'package:provider/provider.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<LoadingViewModel>(
        create: (_) => LoadingViewModel(),
      )
    ],
    child: const MainApp(),
  ));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Consumer<LoadingViewModel>(
          builder: (context, loadingViewModal, _) {
            return const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Stack(children: [
                GetStarted(),
                InitView(),
              ]),
            );
          },
        );
      },
    );
  }
}

class InitView extends StatelessWidget {
  const InitView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        LoadingDialog(),
      ],
    );
  }
}


//  MaterialApp(
//       // builder: (context, child) {
//       //   return InitView(
//       //     child: child!,
//       //   );
//       // },
//       home: const GetStarted(),