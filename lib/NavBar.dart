import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Teknologi Informasi 21"),
            accountEmail: Text("TI21@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network("https://cdn.dribbble.com/users/5214489/screenshots/20213275/media/5fafacc52abf19edcced2983c76c512c.jpg?resize=400x0",
                width: 90,
                height: 90,
                fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage("https://media.istockphoto.com/id/1159199214/vector/abstract-technology-or-medical-background-with-hexagons-shape-pattern-concepts-and-ideas-for.jpg?s=612x612&w=0&k=20&c=jQXehVyWkaZkkf8--52VP0j8Sks5lPK_c6o2arBctMQ=",
                ),
                fit: BoxFit.cover,
              )
            ),
            )
          ,ListTile(
            leading: Icon(Icons.favorite),
            title:Text("Favorites"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.people),
            title:Text("Friends"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.share),
            title:Text("Share"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title:Text("Notifications"),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title:Text("Settings"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.edit_document),
            title:Text("Documents"),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title:Text("Exit"),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
