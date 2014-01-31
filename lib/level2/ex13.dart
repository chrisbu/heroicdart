library level02_ex13;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

void sayCatchphrase(String name, [String catchphrase = "Hello", int repeatCount = 1]) {
  for (var i = 0; i < repeatCount; i++) {
    print('$name says "$catchphrase"');
  }
}

main() {
  sayCatchphrase("The Dart", "Code like a hero", 3); // provide all three args
  sayCatchphrase("Prof. Polymer", "ShadowDOM is cool"); // provide only the first two args
  sayCatchphrase("Captain Dart"); // provide only the first args
}