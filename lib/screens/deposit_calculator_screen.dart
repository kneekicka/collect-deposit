import 'package:flutter/material.dart';
import '../shared/menu_drawer.dart';

class DepositCalculatorScreen extends StatelessWidget {
  const DepositCalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      appBar: AppBar(title: const Text('Pfand Rechner')),
      body: const Center(child: FlutterLogo()),
    );
  }
}
