library level02_ex01;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;


sayCatchphrase(name, catchphrase, repeatCount) { // declaring the sayCatchphrase function
  for (var i = 0; i < repeatCount; i++) {
    print('$name says "$catchphrase"');
  }
}

main() {
  var phrase = "Code like a hero with Dart";
  sayCatchphrase("The Dart", phrase, 3); // calling sayCatchphrase
}