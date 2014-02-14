library level02_ex01a;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;


sayCatchphrase(name, catchphrase, repeatCount) { // declaring the sayCatchphrase function
  for (var i = 0; i < repeatCount; i++) {
    print('$name says "$catchphrase"');
  }
}

main() {
  sayCatchphrase(true, 555, 1); // calling sayCatchphrase
}