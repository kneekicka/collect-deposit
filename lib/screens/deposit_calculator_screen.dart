import 'package:flutter/material.dart';
import '../shared/menu_drawer.dart';
import 'package:collect_deposit/data/deposit.dart';
import '../utils/utils.dart';
import 'package:flutter/services.dart';

class DepositCalculatorScreen extends StatefulWidget {
  const DepositCalculatorScreen({Key? key}) : super(key: key);

  @override
  State<DepositCalculatorScreen> createState() =>
      _DepositCalculatorScreenState();
}

class _DepositCalculatorScreenState extends State<DepositCalculatorScreen> {
  List<TextEditingController> counterController = [];
  double totalSum = 0.00;

  @override
  void initState() {
    super.initState();
    createControllers();
  }

  @override
  void dispose() {
    for (var counter in counterController) {
      counter.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      appBar: AppBar(title: Text('Summe: ${formatCurrency.format(totalSum)}')),
      body: Container(
          margin: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
          child: SingleChildScrollView(
              child: Column(
            children: [
              Table(border: TableBorder.all(), children: [
                for (int i = 0; i < getBottlesAndCratesNoRepeats().length; i++)
                  buildCounter(i)
              ]),
            ],
          ))),
    );
  }

  TableRow buildCounter(int i) => TableRow(children: [
        Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(getBottlesAndCratesNoRepeats()[i].name,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 10)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                formatCurrency.format(
                    _getCorrectDepositPrice(getBottlesAndCratesNoRepeats()[i])),
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 12)),
          )
        ]),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(10),
                FilteringTextInputFormatter.digitsOnly
              ],
              keyboardType: TextInputType.number,
              controller: counterController[i],
              onChanged: (value) {
                _setCounter(i);
              }),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(formatCurrency.format(_countSum(i)),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12)),
        ),
      ]);

  void createControllers() {
    for (int i = 0; i < getBottlesAndCratesNoRepeats().length; i++) {
      counterController.add(TextEditingController(text: '0'));
    }
  }

  _setCounter(int counterIndex) {
    setState(() {
      totalSum += _countSum(counterIndex);
    });
  }

  _countSum(int counterIndex) {
    return _getCorrectDepositPrice(
            getBottlesAndCratesNoRepeats()[counterIndex]) *
        double.parse(counterController[counterIndex].text);
  }

  _getCorrectDepositPrice(Deposit deposit) {
    return deposit.cratePrice != 0
        ? deposit.fullCratePrice
        : deposit.bottlePrice;
  }
}
