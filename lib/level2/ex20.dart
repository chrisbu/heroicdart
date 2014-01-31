library level02_ex20;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

String getCatchphrase(String name, {String catchphrase:"Hello"}) {
  return '$name says "$catchphrase"';
}


main() {
  var phraseFunc = getCatchphrase;
  var message = phraseFunc("The Dart");
  print(message);
}
