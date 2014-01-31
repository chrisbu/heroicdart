library level02_ex22;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() {
  var phraseFunc = (name, {String catchphrase:"Hello"}) => '$name says "$catchphrase"';

  var message = phraseFunc("The Dart");
  print(message);
}