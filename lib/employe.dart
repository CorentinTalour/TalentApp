import 'package:flutter/material.dart';

class Employe extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<Employe> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _skillsController = TextEditingController();

  List<Map<String, String>> _people = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajouter une personne'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nom',
              ),
            ),
            TextField(
              controller: _lastNameController,
              decoration: InputDecoration(
                labelText: 'Prénom',
              ),
            ),
            TextField(
              controller: _skillsController,
              decoration: InputDecoration(
                labelText: 'Compétences',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              child: Text('Ajouter'),
              onPressed: () {
                setState(() {
                  _people.add({
                    'name': _nameController.text,
                    'lastName': _lastNameController.text,
                    'skills': _skillsController.text,
                  });
                  _nameController.clear();
                  _lastNameController.clear();
                  _skillsController.clear();
                });
              },
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: _people.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_people[index]['name']! + ' ' + _people[index]['lastName']!),
                    subtitle: Text(_people[index]['skills']!),
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
