import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  MyAppBar({required Key key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
/*
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text('Login'),

            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),

            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(

              leading: Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );              },
            ),
            ListTile (
              leading: Icon(Icons.apartment),
              title: const Text('Entreprise'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Entreprise()),
                );              },
            ),
          ],
        ),
      ),
*/
      // Ajoutez d'autres éléments de barre d'outils ici si nécessaire
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
