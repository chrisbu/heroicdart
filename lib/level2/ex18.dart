library level02_ex18;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

String checkHeroOrSidekick(String name, {heroText:"Hero", sidekickText:"Sidekick"}) {  
  if (name.contains("Dart")) {
    return heroText;
  } else {
    return sidekickText;   
  }
}

main() {
  var status = checkHeroOrSidekick("Captain Dart", heroText: 'Superhero'); 
  print("Captain Dart is a $status");  

  status = checkHeroOrSidekick("Bullseye",sidekickText:'super-dog');   
  print("Bullseye is a $status");  
}