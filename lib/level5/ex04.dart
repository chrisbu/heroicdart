library level05_ex04;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;


class Hero {
  var alias;
  var powers;
}

main() {
  var myHero = new Hero();
  
  // write data into the properties  
  
  myHero.alias = 'Captain Dart';
  myHero.powers = ['Coding', 'Testing'];
  
  // read data from the properties
  print("My Hero is ${myHero.alias}");
  print("${myHero.alias} enjoys ${myHero.powers.join(' & ')}");
}