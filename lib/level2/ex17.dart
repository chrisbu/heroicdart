library level02_ex17;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

checkHeroOrSidekick(String name, {heroText:"Hero", sidekickText:"Sidekick"}) {  
  if (name.contains("Dart")) {
    return heroText;
  } else {
    return sidekickText;   
  }
}

main() {
  var status = checkHeroOrSidekick("The Dart");
  print("The Dart is a $status");  
}