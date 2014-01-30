library level01_ex08;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;


main() {
  var hero = "The Dart";
  var message = "$hero in uppercase is ${hero.toUpperCase()}";
  print(message);
}
