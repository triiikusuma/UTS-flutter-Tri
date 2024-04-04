import 'package:flutter/material.dart';
import 'package:flutter_application_uts/NavBar.dart';


class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(), // Gunakan NavBar di sini
      appBar: AppBar(
        title: const Text("I N F O  M A H A S I S W A"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go to Home"),
          onPressed: () {
            // go to new page
            Navigator.pushNamed(context, '/homepage');
          },
        ),
      ),
    );
  }
}
