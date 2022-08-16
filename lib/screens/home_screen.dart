import 'package:collect_deposit/shared/menu_drawer.dart';
import 'package:flutter/material.dart';
import 'package:collect_deposit/components/expandable_fab.dart';
import 'package:collect_deposit/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _deposit = 0.0;
  final double _dailyGoal = 2.0;

  void _addDeposit(double price) {
    setState(() {
      _deposit += price;
    });
  }

  void _showAction(BuildContext context, int index) {
    const actionTitles = ['Pfand', 'Kasten', 'Anderes'];

    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(actionTitles[index]),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Schließen'),
            ),
          ],
        );
      },
    );
  }

  _showDeposit(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Pfand hinzufügen'),
          content: SizedBox(
              width: MediaQuery.of(context).size.width * .7,
              child: GridView.count(
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this produces 2 rows.
                crossAxisCount: 2,
                shrinkWrap: true,
                // Generate 100 widgets that display their index in the List.
                children: [
                  TextButton(
                    onPressed: () => _addDeposit(0.25),
                    child: Text(formatCurrency.format(0.25)),
                  ),
                  TextButton(
                    onPressed: () => _addDeposit(0.15),
                    child: Text(formatCurrency.format(0.15)),
                  ),
                  TextButton(
                    onPressed: () => _addDeposit(0.08),
                    child: Text(formatCurrency.format(0.08)),
                  ),
                  TextButton(
                    onPressed: () => _addDeposit(0.03),
                    child: Text(formatCurrency.format(0.03)),
                  ),
                  TextButton(
                    onPressed: () => _addDeposit(0.02),
                    child: Text(formatCurrency.format(0.02)),
                  )
                ],
              )),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Schliessen'),
            ),
          ],
        );
      },
    );
  }

  _showExtra(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Andere Summe'),
          content: SizedBox(
            width: MediaQuery.of(context).size.width * .7,
            child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Summe',
                ),
                keyboardType: TextInputType.number),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Schliessen'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MenuDrawer(),
        appBar: AppBar(
          title: const Text('Pfand Sammler'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Center(
                    child: Text(
                  'Tages Ziel: ${formatCurrency.format(_dailyGoal)}',
                  style: Theme.of(context).textTheme.headline6,
                )),
              ),
              Expanded(
                child: Center(
                    child: Text(
                  'Heute: ${formatCurrency.format(_deposit)}',
                  style: Theme.of(context).textTheme.headline6,
                )),
              ),
            ],
          ),
        ),
        floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 20, right: 20),
            child: ExpandableFab(
              distance: 112.0,
              children: [
                ActionButton(
                  onPressed: () => _showDeposit(context),
                  icon: const Icon(Icons.format_size),
                ),
                ActionButton(
                  onPressed: () => _showAction(context, 1),
                  icon: const Icon(Icons.insert_photo),
                ),
                ActionButton(
                  onPressed: () => _showExtra(context),
                  icon: const Icon(Icons.videocam),
                ),
              ],
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation
            .centerDocked // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
