library level03_ex20;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() {
  var heroes = {'The Dart':'Hero', 'Prof. Polymer':'Sidekick'};
  
  heroes.forEach( (key, value) => print('$key: status = $value'));
}