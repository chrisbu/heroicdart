library level03_ex15;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() {
  var heroMap = {'The Dart':null};
  
  var theDartValue = heroMap['The Dart'];
  var profPolymerValue = heroMap['Prof. Polymer'];

  print("The Dart is $theDartValue");
  print("Prof. Polymer is $profPolymerValue");
}