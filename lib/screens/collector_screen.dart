import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'package:collect_deposit/utils/utils.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../components/expandable_fab.dart';
import '../data/deposit.dart';

class CollectorScreen extends StatefulWidget {
  const CollectorScreen({Key? key}) : super(key: key);

  @override
  State<CollectorScreen> createState() => _CollectorScreenState();
}

class _CollectorScreenState extends State<CollectorScreen> {
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

  void _showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.green[400],
        textColor: Colors.white,
        fontSize: 12.0);
  }

  void _addDeposit(double price) {
    setState(() {
      _deposit += price;
    });
    _showToast("${formatCurrency.format(price)} wurde hinzugefügt");
  }

  void _checkConfetti() {
    setState(() {
      if (_deposit >= _dailyGoal && !confettiShown) {
        _controllerCenter.play();
        confettiShown = true;
        _showToast("Tagesziel erreicht! 🎉");
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
                  for (final deposit in possibleDeposits)
                    TextButton(
                      onPressed: () => _addDeposit(deposit.bottlePrice),
                      child: Text(formatCurrency.format(deposit.bottlePrice)),
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
                  for (final deposit in getPossibleNotRepeatsDeposit())
                    TextButton(
                      onPressed: () => _addDeposit(deposit.fullCratePrice),
                      child:
                          Text(formatCurrency.format(deposit.fullCratePrice)),
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
                FilteringTextInputFormatter.digitsOnly,
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
          padding: const EdgeInsets.only(bottom: 40, right: 20),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
