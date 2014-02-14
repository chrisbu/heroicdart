library level02_ex15;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

String checkHeroOrSidekick(String name, [String heroText="Hero", String sidekickText="Sidekick"]) {
  if (name.contains("Dart")) {
    return heroText;
  } else {
    return sidekickText;   
  }
}

main() {
  var status = checkHeroOrSidekick("The Dart","Superhero"); 
  print("The Dart is a $status");  

  status = checkHeroOrSidekick("Prof. Polymer", "Superhero", "great sidekick");
  print("Prof. Polymer is a $status");
}