library level02_ex05;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

String checkHeroOrSidekick(String name) {
  if (name.contains('Dart')) {
    return 'Hero';
  } else {
    return 'Sidekick';
  }
}

main() {
  var hero = "The Dart";
  var status = checkHeroOrSidekick(hero);
  print("$hero is a $status");
}