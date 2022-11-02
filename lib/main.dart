import 'package:doctor/home_screen.dart';
import 'package:doctor/welcome_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "welcome": (context) => const WelcomeScreen(),
        "home": (context) => const HomeScreen(),
      },
      initialRoute: "welcome",
    );
  }
}
