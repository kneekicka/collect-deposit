import 'package:collect_deposit/shared/menu_drawer.dart';
import 'package:flutter/material.dart';
import 'package:collect_deposit/components/expandable_fab.dart';
import 'package:collect_deposit/utils/utils.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/services.dart';
import 'package:confetti/confetti.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _deposit = 0.0;
  final double _dailyGoal = 1.0;
  late ConfettiController _controllerCenter;
  bool confettiShown = false;

  @override
  void initState() {
    _controllerCenter =
        ConfettiController(duration: const Duration(seconds: 5));
    super.initState();
  }

  @override
  void dispose() {
    _controllerCenter.dispose();
    super.dispose();
  }

  void _addDeposit(double price) {
    setState(() {
      _deposit += price;
    });
  }

  void _checkConfetti() {
    setState(() {
      if (_deposit >= _dailyGoal && !confettiShown) {
        _controllerCenter.play();
        confettiShown = true;
      }
    });
  }

  _showBottle(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Flaschenpfand'),
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
              onPressed: () {
                Navigator.of(context).pop();
                _checkConfetti();
              },
              child: const Text('Schliessen'),
            ),
          ],
        );
      },
    );
  }

  _showCrate(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Kastenpfand'),
          content: SizedBox(
              width: MediaQuery.of(context).size.width * .7,
              child: GridView.count(
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this produces 2 rows.
                crossAxisCount: 2,
                shrinkWrap: true,
                children: [
                  TextButton(
                    onPressed: () => _addDeposit(1.50),
                    child: Text(formatCurrency.format(1.50)),
                  ),
                  TextButton(
                    onPressed: () => _addDeposit(2.30),
                    child: Text(formatCurrency.format(2.30)),
                  ),
                  TextButton(
                    onPressed: () => _addDeposit(2.38),
                    child: Text(formatCurrency.format(2.38)),
                  ),
                  TextButton(
                    onPressed: () => _addDeposit(2.40),
                    child: Text(formatCurrency.format(2.40)),
                  ),
                  TextButton(
                    onPressed: () => _addDeposit(2.46),
                    child: Text(formatCurrency.format(2.46)),
                  ),
                  TextButton(
                    onPressed: () => _addDeposit(2.78),
                    child: Text(formatCurrency.format(2.78)),
                  ),
                  TextButton(
                    onPressed: () => _addDeposit(3.00),
                    child: Text(formatCurrency.format(3.00)),
                  ),
                  TextButton(
                    onPressed: () => _addDeposit(3.10),
                    child: Text(formatCurrency.format(3.10)),
                  ),
                  TextButton(
                    onPressed: () => _addDeposit(3.30),
                    child: Text(formatCurrency.format(3.30)),
                  ),
                  TextButton(
                    onPressed: () => _addDeposit(3.42),
                    child: Text(formatCurrency.format(3.42)),
                  ),
                  TextButton(
                    onPressed: () => _addDeposit(3.66),
                    child: Text(formatCurrency.format(3.66)),
                  ),
                  TextButton(
                    onPressed: () => _addDeposit(3.90),
                    child: Text(formatCurrency.format(3.90)),
                  ),
                  TextButton(
                    onPressed: () => _addDeposit(4.50),
                    child: Text(formatCurrency.format(4.50)),
                  ),
                  TextButton(
                    onPressed: () => _addDeposit(5.10),
                    child: Text(formatCurrency.format(5.10)),
                  ),
                  TextButton(
                    onPressed: () => _addDeposit(6.00),
                    child: Text(formatCurrency.format(6.00)),
                  ),
                ],
              )),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _checkConfetti();
              },
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
                _checkConfetti();
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
                ConfettiWidget(
                  confettiController: _controllerCenter,
                  blastDirectionality: BlastDirectionality.explosive,
                  particleDrag: 0.05,
                  emissionFrequency: 0.05,
                  numberOfParticles: 5,
                  gravity: 0.05,
                  shouldLoop: false,
                  minimumSize: const Size(8, 8),
                  maximumSize: const Size(8, 8),
                  colors: const [
                    Colors.green,
                    Colors.blue,
                    Colors.pink,
                    Colors.orange,
                    Colors.purple,
                    Colors.yellow
                  ], // manually specify the colors to be used
                ),
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
                  onPressed: () => _showBottle(context),
                  icon: const Icon(Icons.format_size),
                ),
                ActionButton(
                  onPressed: () => _showCrate(context),
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
