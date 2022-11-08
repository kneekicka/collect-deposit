import 'package:flutter/material.dart';
import 'package:collect_deposit/data/deposit.dart';
import '../utils/utils.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                children: const <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image(
                        image: AssetImage('assets/Einwegflasche.jpeg'),
                        height: 50),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                        'Einweg Bepfandete Einwegflaschen und Dosen sind am DPG- Logo zu erkennen und haben einen festgelegten Pfandsatz von 0,25 €. Trägt eine Flasche oder Dose dieses Logo ist sie immer mit 0,25 € bepfandet und auch immer eine Einwegflasche.',
                        style: TextStyle(fontSize: 12)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                children: const <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image(
                        image: AssetImage('assets/Gruener-Punkt.jpeg'),
                        height: 50),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                        'Unbepfandete Einwegflaschen und Dosen tragen weder das DPG-Logo noch eine Mehrwegkennzeichnung. Sie sind nur für bestimmte Produkte zugelassen und werden nach Gebrauch entsorgt. Diese Flaschen sind mit dem grünen Punkt oder dem Wegwerfsymbol gekennzeichnet.',
                        style: TextStyle(fontSize: 12)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                children: const <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image(
                        image: AssetImage('assets/Mehrwegsymbol.jpeg'),
                        height: 50),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                        'Mehrweg Mehrwegkisten sind mit wenigen Ausnahmen mit 1,50 € pro Kiste bepfandet. Ausnahmen sind Holzkisten (1,50 – 5,00 €) und goldene 6er Weinkisten (2,70 €). Mehrwegflaschen haben verschiedene Pfandsätze. Sie sind abhängig von der Form und Beschaffenheit der Flaschen. Sie sind häufig gekennzeichnet mit dem Mehrwegsymbol oder dem blauen Engel.',
                        style: TextStyle(fontSize: 12)),
                  ),
                ],
              ),
            ),
            Table(border: TableBorder.all(), children: [
              const TableRow(children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Kiste',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Pfandwert volle Kiste',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Flaschenpfand',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Kistenpfand',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                ),
              ]),
              for (final deposit in possibleDepositCrates)
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(deposit.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(formatCurrency.format(deposit.fullCratePrice),
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(formatCurrency.format(deposit.bottlePrice),
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(formatCurrency.format(deposit.cratePrice),
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 12)),
                  ),
                ])
            ]),
          ],
        )));
  }
}
