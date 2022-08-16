import 'package:flutter/material.dart';
import '../shared/menu_drawer.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      appBar: AppBar(title: const Text('Pfand Info')),
      body: const Center(child: FlutterLogo()),
    );
  }
}
