library level03_ex19;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() {
  var heroMap = {'The Dart':'Hero', 'Prof. Polymer':'Sidekick'};
  
  for (var key in heroMap.keys) {
    var value = heroMap[key];
    print('$key: status = $value');
  }
}