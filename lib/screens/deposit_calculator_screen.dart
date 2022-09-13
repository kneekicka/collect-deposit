import 'package:flutter/material.dart';
import '../shared/menu_drawer.dart';
import 'package:collect_deposit/data/deposit.dart';
import '../utils/utils.dart';
import 'package:numberpicker/numberpicker.dart';

class DepositCalculatorScreen extends StatefulWidget {
  const DepositCalculatorScreen({Key? key}) : super(key: key);

  @override
  State<DepositCalculatorScreen> createState() =>
      _DepositCalculatorScreenState();
}

class _DepositCalculatorScreenState extends State<DepositCalculatorScreen> {
  List<int> counterController = [];
  double totalSum = 0.00;

  @override
  void initState() {
    super.initState();
    createCounters();
  }

  @override
  void dispose() {
    counterController = [];
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
          child: NumberPicker(
            value: counterController[i],
            minValue: 0,
            maxValue: 10000,
            itemHeight: 25,
            textStyle: const TextStyle(fontSize: 12),
            selectedTextStyle:
                const TextStyle(fontSize: 18, color: Colors.blueGrey),
            onChanged: (value) {
              setState(() => counterController[i] = value);
              _setCounter();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(formatCurrency.format(_countSum(i)),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12)),
        ),
      ]);

  void createCounters() {
    for (int i = 0; i < getBottlesAndCratesNoRepeats().length; i++) {
      counterController.add(0);
    }
  }

  _setCounter() {
    setState(() {
      totalSum = 0.0;
      for (int i = 0; i < getBottlesAndCratesNoRepeats().length; i++) {
        totalSum += _countSum(i);
      }
    });
  }

  _countSum(int counterIndex) {
    return _getCorrectDepositPrice(
            getBottlesAndCratesNoRepeats()[counterIndex]) *
        counterController[counterIndex];
  }

  _getCorrectDepositPrice(Deposit deposit) {
    return deposit.cratePrice != 0
        ? deposit.fullCratePrice
        : deposit.bottlePrice;
  }
}
