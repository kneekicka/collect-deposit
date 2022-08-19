import 'package:collect_deposit/shared/menu_drawer.dart';
import 'package:flutter/material.dart';
import 'package:collect_deposit/components/expandable_fab.dart';
import 'package:collect_deposit/utils/utils.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/services.dart';

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
    final TextEditingController controller = TextEditingController();

    void _saveExtra() {
      if (controller.text.isNotEmpty) {
        _addDeposit(double.parse(controller.text
            .replaceAll("€", "")
            .replaceAll(".", "")
            .replaceAll(",", ".")));
      }
    }

    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Andere Summe'),
          content: SizedBox(
            width: MediaQuery.of(context).size.width * .7,
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Summe eintippen',
              ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(10),
                CurrencyTextInputFormatter(
                    locale: "de_DE", symbol: "€", decimalDigits: 2)
              ],
              keyboardType: TextInputType.number,
              controller: controller,
              onSubmitted: (value) {
                _saveExtra();
                controller.clear();
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                _saveExtra();
                controller.clear();
              },
              child: const Text('Hunzufügen'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
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
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Center(
                          child: Text(
                            _deposit >= _dailyGoal
                                ? 'Tagesziel erreicht!'
                                : 'Noch ein wenig bis zum Tagesziel',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Tages Ziel: ${formatCurrency.format(_dailyGoal)}',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Heute: ${formatCurrency.format(_deposit)}',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Monat: ${formatCurrency.format(0.0)}',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Ganze Zeit: ${formatCurrency.format(0.0)}',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ),
                  ],
                ),
              ],
            ),
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
