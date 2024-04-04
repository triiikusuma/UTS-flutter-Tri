import 'package:flutter/material.dart';
import 'package:flutter_application_uts/pages/home_page.dart';
import 'package:flutter_application_uts/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const IntroPage(),
      routes: {
        '/homepage':(context) => const HomePage(),
        '/intropage':(context) => const IntroPage(),
      },
    );
  }
}