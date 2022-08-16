import 'package:flutter/material.dart';
import 'package:collect_deposit/screens/home_screen.dart';

void main() {
  runApp(const CollectDepositApp());
}

class CollectDepositApp extends StatelessWidget {
  const CollectDepositApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Collect deposit',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      darkTheme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}
