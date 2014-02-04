library level03_ex14;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() {
  var heroMap = {'The Dart':'Hero', 'Prof. Polymer':'Sidekick'};
  
  heroMap['Bullseye'] = 'Sidekick';

  print("Bullseye's status is: ${heroMap['Bullseye']}");
}
