import 'package:collect_deposit/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'collector_screen.dart';
import '../models/menu_item_object.dart';
import 'deposit_calculator_screen.dart';
import 'info_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ConfettiController _controllerCenter;
  bool confettiShown = false;

  late int _selectedIndex;
  late Widget screen;

  @override
  void initState() {
    _controllerCenter =
        ConfettiController(duration: const Duration(seconds: 5));
    super.initState();
    _selectedIndex = 0;
    screen = const CollectorScreen();
  }

  // create an array of menu items
  List<MenuItemObject> menuItems = [
    MenuItemObject(index: 0, title: 'Sammler', icon: Icon(Icons.collections)),
    MenuItemObject(index: 1, title: 'Rechner', icon: Icon(Icons.calculate)),
    MenuItemObject(index: 2, title: 'Info', icon: Icon(Icons.info)),
    MenuItemObject(index: 3, title: 'Einstellungen', icon: Icon(Icons.settings))
  ];

  BottomNavigationBarItem listItem(MenuItemObject item) {
    return BottomNavigationBarItem(
      icon: item.icon,
      label: item.title,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        screen = const CollectorScreen();
        break;
      case 1:
        screen = const DepositCalculatorScreen();
        break;
      case 2:
        screen = const InfoScreen();
        break;
      case 3:
        screen = const SettingsScreen();
        break;
    }
  }

  @override
  void dispose() {
    _controllerCenter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pfand Sammler'),
        ),
        body: screen,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: menuItems.map<BottomNavigationBarItem>(listItem).toList(),
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
        ));
  }
}
