library level02_ex03;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;




void sayCatchphrase(String name, String catchphrase, int repeatCount) {
  for (var i = 0; i < repeatCount; i++) {
    print('$name says "$catchphrase"');
  }
}

main() {
  var phrase = "Code like a hero with Dart";
  sayCatchphrase("The Dart", phrase, 3); // calling sayCatchphrase
}
