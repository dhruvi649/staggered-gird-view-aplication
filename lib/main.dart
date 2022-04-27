import 'package:app_ui_design_example/next_screen/next_screen.dart';
import 'package:app_ui_design_example/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        NextScreen.id: (context) => const NextScreen(),
      },
    );
  }
}
