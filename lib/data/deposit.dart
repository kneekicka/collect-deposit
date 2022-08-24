class Deposit {
  Deposit(
      {required this.name,
      required this.fullCratePrice,
      required this.bottlePrice,
      required this.cratePrice});
  final String name;
  final double fullCratePrice;
  final double bottlePrice;
  final double cratePrice;

  @override
  bool operator ==(Object other) {
    return other is Deposit && hashCode == other.hashCode;
  }

  @override
  int get hashCode => int.parse(fullCratePrice.toString().replaceAll(".", ""));
}

final List<Deposit> possibleDepositCrates = [
  Deposit(
    name: 'Weinkiste 12er Glas Mehrweg',
    fullCratePrice: 1.86,
    bottlePrice: 0.03,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Weinkiste 6er Glas Mehrweg Gold',
    fullCratePrice: 2.88,
    bottlePrice: 0.03,
    cratePrice: 2.70,
  ),
  Deposit(
    name: 'Wasser 6x1l Glas Mehrweg',
    fullCratePrice: 2.40,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Wasser 6x1l Glas Mehrweg',
    fullCratePrice: 2.40,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Wasser 12x0,33l Glas',
    fullCratePrice: 2.46,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Wasser 10x1l PET Mehrweg',
    fullCratePrice: 3.00,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Wasser 12x0,7l PET Mehrweg',
    fullCratePrice: 3.30,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Wasser 12x1l PET Mehrweg',
    fullCratePrice: 3.30,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Wasser 12x0,5l PET Mehrweg',
    fullCratePrice: 3.30,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Wasser 12x0,7l/0,75l Glas Mehrweg',
    fullCratePrice: 3.30,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Wasser 16x0,7l Glas',
    fullCratePrice: 3.90,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Wasser 12x1l PET Einweg',
    fullCratePrice: 4.50,
    bottlePrice: 0.25,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Wasser 12x0,5l PET Einweg',
    fullCratePrice: 4.50,
    bottlePrice: 0.25,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Wasser 20x0,5l Glas',
    fullCratePrice: 4.50,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Wasser 24x0,2l Glas',
    fullCratePrice: 5.10,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Wasser 24x0,33l Glas',
    fullCratePrice: 5.10,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Wasser 30x0,2l Glas',
    fullCratePrice: 6.00,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Cola 12x0,5l PET',
    fullCratePrice: 3.30,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Cola 12x1l PET',
    fullCratePrice: 3.30,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Cola 10x1,5l PET',
    fullCratePrice: 3.00,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Cola 24x0,2l Glas',
    fullCratePrice: 5.10,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Cola 24x0,33l Glas',
    fullCratePrice: 5.10,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Cola 20x0,5l Glas',
    fullCratePrice: 4.50,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Bier 10x0,33l',
    fullCratePrice: 2.30,
    bottlePrice: 0.08,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Bier 11x0,5l',
    fullCratePrice: 2.38,
    bottlePrice: 0.08,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Bierkiste 12er',
    fullCratePrice: 2.46,
    bottlePrice: 0.08,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Bier 12x0,5l Bügel',
    fullCratePrice: 3.30,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Bier 16x0,5l',
    fullCratePrice: 2.78,
    bottlePrice: 0.08,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Bier 20x0,33l',
    fullCratePrice: 3.10,
    bottlePrice: 0.08,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Bier 20x0,5l',
    fullCratePrice: 3.10,
    bottlePrice: 0.08,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Bier 20x0,5l Bügel',
    fullCratePrice: 4.50,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Bier 20x0,33l Bügel',
    fullCratePrice: 4.50,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Bier 24x0,33l',
    fullCratePrice: 3.42,
    bottlePrice: 0.08,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Bierkiste 10er, halbe Kiste',
    fullCratePrice: 1.55,
    bottlePrice: 0.08,
    cratePrice: 0.75,
  ),
  Deposit(
    name: 'Bier 27x0,33l',
    fullCratePrice: 3.66,
    bottlePrice: 0.08,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Saftkiste 10er Glas',
    fullCratePrice: 2.30,
    bottlePrice: 0.08,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Saft 6x0,7l Glas',
    fullCratePrice: 2.40,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Saft 6x1l Glas',
    fullCratePrice: 2.40,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Saft 24x0,2l Glas',
    fullCratePrice: 5.10,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Saft 30x0,2l Glas',
    fullCratePrice: 6.00,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Volvic/Vitte/Evian/Vio 6x1l PET',
    fullCratePrice: 3.00,
    bottlePrice: 0.25,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'AFG Kiste 9er PET',
    fullCratePrice: 3.75,
    bottlePrice: 0.25,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'AFG-Kiste 15er Glas',
    fullCratePrice: 3.75,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'AFG-Kiste 18er Glas Schweppes',
    fullCratePrice: 4.20,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'AFG Kiste 11er PET',
    fullCratePrice: 4.25,
    bottlePrice: 0.25,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'AFG-Kiste 20er PET',
    fullCratePrice: 6.50,
    bottlePrice: 0.25,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'AFG-Kiste 24er PET',
    fullCratePrice: 7.50,
    bottlePrice: 0.25,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'AFG-Kiste 54er San Bitter',
    fullCratePrice: 9.60,
    bottlePrice: 0.15,
    cratePrice: 1.50,
  ),
  Deposit(
    name: 'Dosen',
    fullCratePrice: 0.00,
    bottlePrice: 0.25,
    cratePrice: 0.00,
  ),
];

final possibleDeposits = [0.25, 0.15, 0.08, 0.03, 0.02];

List<Deposit> getPossibleNotRepeatingDeposit() {
  List<Deposit> filteredList = possibleDepositCrates
      .where((deposit) => deposit.fullCratePrice > 0.00)
      .toSet()
      .toList();
  filteredList.sort((a, b) => a.fullCratePrice.compareTo(b.fullCratePrice));
  return filteredList;
}
