library level02_ex07;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

String spotHero(hero) => "Look, there goes $hero";

main() {
  var message = spotHero("The Dart");
  print(message);
}