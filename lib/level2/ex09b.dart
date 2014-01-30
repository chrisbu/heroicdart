library level02_ex09b;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;


final bool DEBUG = true; // top level DEBUG variable

void log(String message) {
  if (DEBUG) {
    print("LOG: $message");
  } 
}

String spotHero(String hero) => "Look, there goes $hero";

void main() {
  var heroName = 'The Dart';
  log("We have a hero: $heroName"); // doesn't get output when DEBUG = false

  var message = spotHero(heroName);
  print(message);
}