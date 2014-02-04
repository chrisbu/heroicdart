library level03_ex12;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() {
  var heroMap = {'The Dart':'Hero', 'Prof. Polymer':'Sidekick'}; 
  
  print("heroMap: ${heroMap}");
}
