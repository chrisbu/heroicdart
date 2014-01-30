library level01_ex04;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;


main() {
  final isDartAwesome = true;
  isDartAwesome = false; // what?  this won't change...
}