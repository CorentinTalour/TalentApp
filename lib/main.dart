import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled/accueil.dart';
import 'package:untitled/employe.dart';
import 'package:untitled/entreprise.dart';
import 'package:untitled/login.dart';
import 'package:untitled/myappbar.dart';
import 'package:untitled/tollbar.dart';

void main() {
  runApp(Login());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //    // Try running your application with "flutter run". You'll see the    // application has a blue toolbar. Then, without quitting the app, try    // changing the primarySwatch below to Colors.green and then invoke    // "hot reload" (press "r" in the console where you ran "flutter run",    // or simply save your changes to "hot reload" in a Flutter IDE).    // Notice that the counter didn't reset back to zero; the application    // is not restarted.    primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;


  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("TalentApp"),


        actions: [
          IconButton(
            icon: const Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) =>  Recherche()),

              );
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) =>  Recherche()),

              );
            },          ),
        ],
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Bienvenue sur TalentApp"),


            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Entreprise');
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
                  MaterialPageRoute(builder: (context) => MyHomePage(title: "TalentApp")),
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
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Employe()),
                );              },
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
                  MaterialPageRoute(builder: (context) => Recherche()),
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


class Recherche extends StatefulWidget {
  @override
  _RechercheState createState() => _RechercheState();
}

class _RechercheState extends State<Recherche> {
  List<Map<String, String>> _people = [];

  @override
  void initState() {
    super.initState();

    Map<String, String> person1 = {
      "nom": "Dupont",
      "prenom": "Pierre",
      "age": "25"
    };
    _people.add(person1);

    Map<String, String> person2 = {
      "nom": "Martin",
      "prenom": "Marie",
      "age": "30"
    };
    _people.add(person2);

    Map<String, String> person3 = {
      "nom": "Garcia",
      "prenom": "Juan",
      "age": "40"
    };
    _people.add(person3);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recherche'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[



            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: _people.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_people[index]['nom']! + ' ' + _people[index]['prenom']!),
                    subtitle: Text(_people[index]['age']!),
                  );
                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}
