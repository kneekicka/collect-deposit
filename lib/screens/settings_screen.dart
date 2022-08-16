import 'package:flutter/material.dart';
import '../shared/menu_drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      appBar: AppBar(title: const Text('Einstellungen')),
      body: const Center(child: FlutterLogo()),
    );
  }
}
