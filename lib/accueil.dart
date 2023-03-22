import 'package:flutter/material.dart';
import 'package:untitled/employe.dart';
import 'package:untitled/entreprise.dart';
import 'package:untitled/main.dart';
import 'package:untitled/tollbar.dart';

import 'login.dart';
/*
void main() => runApp(const Accueil());
*/
class Accueil extends StatelessWidget {
  const Accueil({super.key});

  static const appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),
        actions: [
        IconButton(
        icon: const Icon(
        Icons.arrow_back,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    IconButton(
    icon: const Icon(
    Icons.search,
    ),
    onPressed: () {},
    ),
    ],),
      body:  Center(
        child: Column(

        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const Entreprise()),

            );
            },
            child: Text('Saisie entreprise'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Employe()),
              );
            },
            child: Text('Saisie employer'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/third');
            },
            child: Text('Recherche compétence'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
            child: Text('Localisation géographique'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
            child: Text('Aller à ma nouvelle page'),
          ),

        ],

      ),
      ),

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

            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),

            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text('Rechercher'),

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

            ListTile(
              leading: Icon(Icons.group),
              title: Text('Employer'),

            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Toolbar()),
                );              },
            ),
            ListTile(
              leading: Icon(Icons.explore),
              title: Text('Explore'),

            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text('Logout'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );              },
            ),

          ],
        ),
      ),
    );
  }
}