import 'package:flutter/material.dart';
import '../shared/menu_drawer.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      appBar: AppBar(title: const Text('Pfand Info')),
      body: Container(
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
              Table(border: TableBorder.all(), children: const [
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Kiste',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Pfandwert volle Kiste',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Flaschenpfand',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Kistenpfand',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Weinkiste 12er Glas Mehrweg',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,86 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,03 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Weinkiste 6er Glas Mehrweg Gold',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('2,88 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,03 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('2,70 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Wasser 6x1l Glas Mehrweg',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('2,40 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Wasser 6x1,5l PET Mehrweg',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('2,40 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Wasser 12x0,33l Glas',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('2,46 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Wasser 10x1l PET Mehrweg',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('3,00 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Wasser 12x0,7l PET Mehrweg',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('3,30 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Wasser 12x1l PET Mehrweg',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('3,30 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Wasser 12x0,5l PET Mehrweg',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('3,30 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Wasser 12x0,7l/0,75l Glas Mehrweg',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('3,30 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Wasser 16x0,7l Glas',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('3,90 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Wasser 12x1l PET Einweg',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('4,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,25 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Wasser 12x0,5l PET Einweg',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('4,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,25 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Wasser 20x0,5l Glas',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('4,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Wasser 24x0,2l Glas',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('5,10 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Wasser 24x0,33l Glas',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('5,10 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Wasser 30x0,2l Glas',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('6,00 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Cola 12x0,5l PET',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('3,30 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Cola 12x1l PET',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('3,30 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Cola 10x1,5l PET',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('3,00 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Cola 24x0,2l Glas',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('5,10 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Cola 24x0,33l Glas',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('5,10 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Cola 20x0,5l Glas',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('4,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Bier 10x0,33l',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('2,30 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,08 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Bier 11x0,5l',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('2,38 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,08 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Bierkiste 12er',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('2,46 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,08 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Bier 12x0,5l Bügel',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('3,30 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Bier 16x0,5l',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('2,78 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,08 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Bier 20x0,33l',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('3,10 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,08 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Bier 20x0,5l',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('3,10 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,08 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Bier 20x0,5l Bügel',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('4,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Bier 20x0,33l Bügel',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('4,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Bier 24x0,33l',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('3,42 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,08 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Bierkiste 10er, halbe Kiste',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,55 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,08 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,75 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Bier 27x0,33l',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('3,66 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,08 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Saftkiste 10er Glas',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('2,30 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,08 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Saft 6x0,7l Glas',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('2,40 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Saft 6x1l Glas',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('2,40 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Saft 24x0,2l Glas',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('5,10 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Saft 30x0,2l Glas',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('6,00 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Volvic/Vitte/Evian/Vio 6x1l PET',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('3,00 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,25 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('AFG Kiste 9er PET',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('3,75 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,25 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('AFG-Kiste 15er Glas',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('3,75 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('AFG-Kiste 18er Glas Schweppes',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('4,20 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('AFG Kiste 11er PET',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('4,25 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,25 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('AFG-Kiste 20er PET',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('6,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,25 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('AFG-Kiste 24er PET',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('7,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,25 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('AFG-Kiste 54er San Bitter',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('9,60 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,15 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1,50 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Dosen',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,00 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,25 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0,00 €',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12)),
                  ),
                ]),
              ]),
            ],
          ))),
    );
  }
}
