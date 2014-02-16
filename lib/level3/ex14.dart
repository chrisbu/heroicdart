library level03_ex14;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() {
  var powers = {'The Dart':['Speed', 'Agility'], 'Prof. Polymer':'Super Hearing'};
  
  powers['Bullseye'] = ['Talking to animals'];

  print("Bullseye's status is: ${powers['Bullseye']}");
}
