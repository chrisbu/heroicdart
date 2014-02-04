library level03_ex13;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() {
  var heroMap = {'The Dart':'Hero', 'Prof. Polymer':'Sidekick'};
  
  heroMap['Captain Dart'] = 'Hero'; 
  var status = heroMap['Captain Dart']; 

  print("Captain Dart's status is: $status");
}
