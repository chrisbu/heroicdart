library level01_ex07;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;


main() {
  var message = """Some
user
text""";
  print(message);
}