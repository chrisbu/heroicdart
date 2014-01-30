library level02_ex08;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

String spotHero(hero) => "Look, there goes $hero";

String shoutMessage(message) => message.toUpperCase();

main() {
  var message = spotHero("The Dart");
  var shoutOut = shoutMessage(message);

  print(message);
  print(shoutOut);
}