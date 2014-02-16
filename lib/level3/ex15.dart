library level03_ex15;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() {
  var heroes = {'The Dart':null};
  
  var theDartValue = heroes['The Dart'];
  var profPolymerValue = heroes['Prof. Polymer'];

  print("The Dart is $theDartValue");
  print("Prof. Polymer is $profPolymerValue");
}