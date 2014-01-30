library level01_ex01;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() {
  var name = "The Dart";
  print("Hello, $name");
}