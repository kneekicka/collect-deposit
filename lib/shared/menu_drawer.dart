import 'package:flutter/material.dart';
import 'package:collect_deposit/screens/home_screen.dart';
import 'package:collect_deposit/screens/deposit_calculator_screen.dart';
import 'package:collect_deposit/screens/info_screen.dart';
import 'package:collect_deposit/screens/settings_screen.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(child: ListView(children: buildMenuItems(context)));
  }

  List<Widget> buildMenuItems(BuildContext context) {
    final List<String> menuTitles = [
      'Sammler',
      'Rechner',
      'Info',
      'Einstellungen'
    ];

    List<Widget> menuItems = [];
    menuItems.add(const DrawerHeader(
      decoration: BoxDecoration(
        color: Colors.blueGrey,
      ),
      child: Text(
        'Pfand Sammler',
        style: TextStyle(color: Colors.white),
      ),
    ));
    for (var element in menuTitles) {
      Widget screen = Container();
      menuItems.add(ListTile(
          title: Text(element),
          onTap: () {
            switch (element) {
              case 'Sammler':
                screen = const HomeScreen();
                break;
              case 'Rechner':
                screen = const DepositCalculatorScreen();
                break;
              case 'Info':
                screen = const InfoScreen();
                break;
              case 'Einstellungen':
                screen = const SettingsScreen();
                break;
            }
            Navigator.of(context).pop();
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => screen));
          }));
    }
    return menuItems;
  }
}
