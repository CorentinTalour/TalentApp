import 'package:flutter/material.dart';
import 'package:untitled/main.dart';
import 'package:untitled/tollbar.dart';

import 'login.dart';
/*
void main() => runApp(const Entreprise());
*/

class Entreprise extends StatefulWidget {
  @override
  _MyEntreprisePage createState() => _MyEntreprisePage();
}







class _MyEntreprisePage extends State<Entreprise> {
 //const _MyEntreprisePage({super.key, required this.title});

  final TextEditingController _NomController = TextEditingController();
  final TextEditingController _SpecialiteController = TextEditingController();
  // AutocompleteBasicExample _rechercheEntreprise = AutocompleteBasicExample();

  List<Map<String, String>> _kOptions = [];



  final String title = "Entreprise";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body:  Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            AutocompleteBasicExample(),

              Divider(

                height: 20,
                thickness: 2,
              ),

            TextField(
              controller: _NomController,
              decoration: InputDecoration(
                labelText: 'Nom',
              ),
            ),

            TextField(
              controller: _SpecialiteController,
              decoration: InputDecoration(
                labelText: 'Compétences',
              ),
            ),


            ElevatedButton(
              child: Text('Ajouter'),
              onPressed: () {
                setState(() {
                  _kOptions.add({
                    'Nom': _NomController.text,
                    'lastName': _SpecialiteController.text,

                  });
                  _NomController.clear();
                  _SpecialiteController.clear();

                });
              },
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _kOptions.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_kOptions[index]['name']! + ' ' + _kOptions[index]['lastName']!),
                    subtitle: Text(_kOptions[index]['skills']!),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );















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
    );
  }
}


class AutocompleteBasicExample extends StatelessWidget {
  const AutocompleteBasicExample({super.key});

  static const List<String> _kOptions = <String>[
    'API',
    'CAPL',
    'Bigar',
    'Ubisoft',
    'Arkane',
    'Riot',
    'Imprimerie',
    'Blyat',
    'Cyka',
    'Total',
    'Electronic Arts',
    'Blizzard',
    'microsoft',
    'cpi',
    'scm',



  ];

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return _kOptions.where((String option) {
          return option.contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String selection) {
        debugPrint('You just selected $selection');
      },
    );
  }
}