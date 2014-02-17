library level05_ex06;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;


class Hero {
  String alias = "";
  List powers = [];

  void repeatCatchphrase(String catchphrase, [repeatCount=1]) {
    for (int i=0; i < repeatCount; i++) {
      print('$alias says "$catchphrase"');
    }
  }

  void usePowers() {
    powers.forEach((power) => print('$alias uses $power'));
  }
}

main() {
  var myHero = new Hero();
  myHero.alias = "The Dart";
  myHero.powers = ['Speed', 'Agility'];
  myHero.usePowers();
}