library level02_ex16;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

sayCatchphrase(String name, {String catchphrase:"Hello", int count:1}) {
 for (var i = 0; i < count; i++) {
   print('$name says "$catchphrase"');
  }
}

main() {
  sayCatchphrase("The Dart", count:3); // specifying count by name.
}