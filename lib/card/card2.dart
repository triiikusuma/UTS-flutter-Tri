import 'package:flutter/material.dart';

class Card2 extends StatefulWidget {
  const Card2({super.key});
  
  @override
  State<Card2> createState() => _Card2();
}

class _Card2 extends State<Card2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("P R O F I L E  M A H A S I S W A",
        style: TextStyle(
        fontWeight: FontWeight.bold
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        ),
body:ListView(
        children: <Widget> [
          Padding(
            padding: const EdgeInsets.all(8.6),
            child: Image.network("https://t3.ftcdn.net/jpg/06/87/80/96/360_F_687809694_8wvi3jo9ANyjZPLEVUD2ufRPiLHpR1ad.jpg"),
          ),
          const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.home),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.school),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.settings),
          ),
          ],
          ),

        const ListTile(
          title: Text("Pande Priatama",),
          subtitle: Text("Nama"),
        ),
        const ListTile(
          title: Text("Fakultas Teknik dan Informatika"),
          subtitle: Text("Fakultas"),
        ),
        const ListTile(
          title: Text("Teknologi Informasi"),
          subtitle: Text("Program Studi"),
        ),
        const ListTile(
          title: Text("421313252"),
          subtitle: Text("NIM"),
        ),
        const ListTile(
          title: Text("Jalan pratama No.33 Wn"),
          subtitle: Text("Alamat"),
        ),
        const ListTile(
          title: Text("Teknologi Informasi (TI) merujuk pada penggunaan komputer dan perangkat lunak untuk mengumpulkan, menyimpan, mengolah, dan menyebarkan informasi. Ini mencakup berbagai macam teknologi dan sistem yang digunakan untuk mengelola dan mengirimkan data dalam berbagai bentuk. Teknologi Informasi juga mencakup infrastruktur teknologi yang mendukung proses ini, seperti jaringan komputer, server, dan perangkat keras dan perangkat lunak lainnya."),
        )
        ]
      )
    );
  }
}