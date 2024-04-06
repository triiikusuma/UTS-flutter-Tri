import 'package:flutter/material.dart';
import 'package:flutter_application_uts/card/card1.dart';
import 'package:flutter_application_uts/card/card2.dart';
import 'package:flutter_application_uts/card/card3.dart';
import 'package:flutter_application_uts/card/card4.dart';
import 'package:flutter_application_uts/card/card5.dart';
import 'package:flutter_application_uts/card/card6.dart';
import 'package:flutter_application_uts/pages/home_page.dart';

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
      home: const HomePage(),
      routes: {
        '/card1':(context) => const Card1(),
        '/card2':(context) => const Card2(),
        '/card3':(context) => const Card3(),
        '/card4':(context) => const Card4(),
        '/card5':(context) => const Card5(),
        '/card6':(context) => const Card6(),
        '/homepage':(context) => const HomePage(),
      },
    );
  }
}