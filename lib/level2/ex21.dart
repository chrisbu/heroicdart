library level02_ex21;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() {
  var phraseFunc = (String name, {String catchphrase:"Hello"}) {
    return '$name says "$catchphrase"';
  };

  var message = phraseFunc("The Dart");
  print(message);
}