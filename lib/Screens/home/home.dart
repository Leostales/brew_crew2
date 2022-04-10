import 'package:brew_crew/Screens/home/settings_form.dart';
import 'package:flutter/material.dart';
import 'package:brew_crew/services/auth.dart';
import 'package:brew_crew/services/database.dart';
import 'package:provider/provider.dart';
import 'package:brew_crew/Screens/home/brew_list.dart';
import 'package:brew_crew/models/brew.dart';

class Home extends StatelessWidget {

  String uid;
  final AuthService _auth = AuthService();

  Home({required this.uid});

  @override
  Widget build(BuildContext context) {

    void _showSettingsPanel() {
      showModalBottomSheet(context: context, builder: (context) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
          child: SettingsForm(),
        );
      });
    }

    return StreamProvider<List<Brew>>.value(
      value: DatabaseService(uid: uid).brews,
      initialData: [],
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: const Text("Brew Crew"),
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          centerTitle: false,
          actions: [
            Row(
              children: [
                TextButton.icon(
                  icon: const Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 30,
                  ),
                  label: const Text(
                    "logout",
                    style: TextStyle(
                      color: Colors.black,
                    )
                  ),
                  onPressed: () async {
                    await _auth.signOut();
                  },
                ),
                TextButton.icon(
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.black,
                    size: 30,
                  ),
                  label: const Text(
                    "settings",
                    style: TextStyle(
                      color: Colors.black,
                    )
                  ),
                  onPressed: () => _showSettingsPanel(),
                ),
              ],
            ),
          ]
        ),
        body: BrewList(),
      ),
    );
  }
}
