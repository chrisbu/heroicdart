library level01_ex03;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() {
  var hero = "The Dart";                             // dynamic typing
  String sidekick = "Prof. Polymer";                 // type annotated

  print("hero is a ${hero.runtimeType}");
  print("sidekick is a ${sidekick.runtimeType}");
}