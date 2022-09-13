import 'package:flutter/material.dart';
import '../shared/menu_drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      appBar: AppBar(title: const Text('Einstellungen')),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Card(
                    child: ListTile(
                  title: Text("John Doe"),
                  leading: CircleAvatar(),
                  trailing: Icon(Icons.edit),
                )),
                const SizedBox(height: 10.0),
                Card(
                    margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
                    child: Column(children: const <Widget>[
                      ListTile(
                          leading: Icon(Icons.lock_outline),
                          title: Text("Change password"),
                          trailing: Icon(Icons.keyboard_arrow_right)),
                      ListTile(
                          leading: Icon(Icons.language),
                          title: Text("Change language"),
                          trailing: Icon(Icons.keyboard_arrow_right)),
                      ListTile(
                          leading: Icon(Icons.language),
                          title: Text("Change language"),
                          trailing: Icon(Icons.keyboard_arrow_right))
                    ])),
                const SizedBox(height: 10.0),
                const Text("Theme Settings",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey)),
                SwitchListTile(
                    activeColor: Colors.blueGrey,
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    title: const Text("Dark mode"),
                    onChanged: (val) {})
              ])),
    );
  }
}
