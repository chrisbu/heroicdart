library level01_ex05;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;


main_before_editing() {
  var hero = "The Dart";  // String               ← String
  var isTheDartEpic = true;  // final bool        ← final bool
  var areaCode = 555;    // num                   ← num
  
  if (isTheDartEpic = false) {
    print("I think you are wrong - The Dart is Epic!");
  }
  
}

main_after_editing() {
  String hero = "The Dart";  // String               ← String
  final bool isTheDartEpic = true;  // final bool        ← final bool
  num areaCode = 555;    // num                   ← num
  
  if (isTheDartEpic = false) {
    print("I think you are wrong - The Dart is Epic!");
  }
}
