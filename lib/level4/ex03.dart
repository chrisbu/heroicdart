library level04_ex03;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

// code example starts below this line

import 'dart:async';

String sayCatchphrase(String name, String catchphrase) {
  var oneSecond = new Duration(seconds:1);

  new Timer(oneSecond, () {
      var valueToReturn = '$name says "$catchphrase"'; 
      return valueToReturn;
  });
}

main() {
  print("1. Main started");
  
  var message = sayCatchphrase('The Dart', 'Code like a hero!');
  print(message);
  
  print("2. Main finished");
}




