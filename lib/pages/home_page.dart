import 'package:flutter/material.dart';
import 'package:flutter_application_uts/NavBar.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
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


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _iconBool ? _darkTheme : _lightTheme,
      home: Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: const Text("I N F O  M A H A S I S W A",
        style: TextStyle(
        fontWeight: FontWeight.bold
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: (){
            setState(() {
              _iconBool = !_iconBool;
            });
          }, 
          icon: Icon(_iconBool ? _iconDark : _iconLight),
          ),
        ],
      ),
      body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(8.6),
        child: Image(
          image: AssetImage(
            "assets/kartu_mahasiswa.png"),
        ),
      ),
      Card(
        color: Colors.blue,
        child: Padding(
          padding: EdgeInsets.all(15.15),
          child: Text("SELAMAT DATANG DI BIODATA MAHASISWA TI 21",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),
        ),
      ),
      SizedBox(height: 20), // Spacer

      ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.all(8.8),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/card1');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              child: Text(
                "Tri Kusuma",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16, 
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.8),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/card2');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              child: Text(
                "Pande Priatama",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16, 
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.8),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/card3');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              child: Text(
                "Ary Mahendra",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16, 
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.8),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/card4');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              child: Text(
                "Adi Saputra",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16, 
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.8),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/card5');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              child: Text(
                "Add On Here (+)",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16, 
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  ),
      )
      )
);
  }
  }