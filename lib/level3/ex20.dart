library level03_ex20;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() {
  var heroMap = {'The Dart':'Hero', 'Prof. Polymer':'Sidekick'};
  
  heroMap.forEach( (key, value) => print('$key: status = $value'));
}