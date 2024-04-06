import 'package:flutter/material.dart';
import 'package:flutter_application_uts/NavBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _iconBool = false;

  IconData _iconLight = Icons.wb_sunny;
  IconData _iconDark = Icons.nights_stay;

  ThemeData _lightTheme = ThemeData(
    primarySwatch: Colors.amber,
    brightness: Brightness.light,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.amberAccent,
    ),
  );

  ThemeData _darkTheme = ThemeData(
    primarySwatch: Colors.red,
    brightness: Brightness.dark,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _iconBool ? _darkTheme : _lightTheme,
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: const Text(
            "I N F O  M A H A S I S W A",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  _iconBool = !_iconBool;
                });
              },
              icon: Icon(_iconBool ? _iconDark : _iconLight),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.6),
                child: Image(
                  image: AssetImage("assets/kartu_mahasiswa.png"),
                ),
              ),
              Card(
                color: Colors.blue,
                child: Padding(
                  padding: EdgeInsets.all(15.15),
                  child: Text(
                    "SELAMAT DATANG DI BIODATA MAHASISWA TI 21",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 20), // Spacer
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _buildElevatedButton(context, "Tri Kusuma", '/card1'),
                  _buildElevatedButton(context, "Pande Priatama", '/card2'),
                  _buildElevatedButton(context, "Ary Mahendra", '/card3'),
                  _buildElevatedButton(context, "Adi Saputra", '/card4'),
                  _buildElevatedButton(context, "Indra Maheswara", '/card5'),
                  _buildElevatedButton(context, "Add On Here (+)", '/card6'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildElevatedButton(BuildContext context, String text, String route) {
    return Padding(
      padding: EdgeInsets.all(8.8),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueGrey,
          padding: EdgeInsets.all(20.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
