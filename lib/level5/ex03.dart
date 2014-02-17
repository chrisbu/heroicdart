library level05_ex03;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;


class Hero {
  var alias;
  var powers;
}

main() {
  var myHero = new Hero();
  myHero.alias = "The Dart";    // write data into the alias property
  myHero.powers = ['Speed', 'Agility']; // write a list of powers
  print('${myHero.alias} has ${myHero.powers}');  // read data from the property
}