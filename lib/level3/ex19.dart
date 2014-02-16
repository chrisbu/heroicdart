library level03_ex19;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() {
  var heroes = {'The Dart':'Hero', 'Prof. Polymer':'Sidekick'};
  
  for (var key in heroes.keys) {
    var value = heroes[key];
    print('$key: status = $value');
  }
}