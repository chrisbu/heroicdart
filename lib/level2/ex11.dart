library level02_ex11;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;


final bool DEBUG = true;

void log(message) {
  if (DEBUG) {        // uses the top-level DEBUG variable
    print("LOG: $message");
  } 
}

String spotHero(hero) => "Look, there goes $hero";

main() {
  var heroName = "The Dart";
  log("Look, there goes $heroName");

  final bool DEBUG = false;  // shadows the top-level DEBUG variable
  if (!DEBUG) {
    print("Move along please... nothing to see here");
  }
}