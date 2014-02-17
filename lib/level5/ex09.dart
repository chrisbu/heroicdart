library level05_ex09;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;


class Hero {
  String alias = "";
  List powers = [];

  void addPowers(List powers) {
    this.powers.addAll(powers);
  }

  // existing method
  void updateAlias(String alias) {
    if (this.alias == "") { // if this instance's alias property is empty
      this.alias = alias;  // then set it to the parameter value
    }
  }

  // existing method
  void repeatCatchphrase(String catchphrase, [repeatCount=1]) {
    for (int i=0; i < repeatCount; i++) {
      print('$alias says "$catchphrase"');
    }
  }

  // existing method
  void usePowers() {
    powers.forEach((power) => print('$alias uses $power'));
  }
}

main() {
  var hero = new Hero()
    ..updateAlias('The Dart')
    ..addPowers(['Speed', 'Agility'])
    ..repeatCatchphrase('Code like a hero!')
    ..usePowers();
}