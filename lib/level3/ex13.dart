library level03_ex13;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() {
  var powers = {'The Dart':['Speed', 'Agility'], 'Prof. Polymer':'Super Hearing'}; 

  
  powers['Captain Dart'] = ['Strength', 'Flying']; 
  var power = powers['Captain Dart']; 

  print("Captain Dart's power is: $power");
}
