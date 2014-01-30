library level02_ex02;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;


sayCatchphrase(String name, String catchphrase, int repeatCount) {
  for (var i = 0; i < repeatCount; i++) {
    print('$name says "$catchphrase"');
  }
}

main() {
  var phrase = "Code like a hero with Dart";
  sayCatchphrase("The Dart", phrase, 3); // calling sayCatchphrase
  
  sayCatchphrase(true,555,"Not an int"); // invalid argument types
}