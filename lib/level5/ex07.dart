library level05_ex07;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;


class Hero {
  String alias = "";
  List powers = [];

  void updateAlias(String alias) {
    if (this.alias == "") { // if this instance's alias property is empty
      this.alias = alias;  // then set it to the parameter value
    }
  }
}

main() {
  var hero = new Hero();
  hero.updateAlias('The Dart');
  print(hero.alias);
  // try updating again - it should remain unchanged once initialised
  hero.updateAlias('Captain Dart');
  print(hero.alias);
}