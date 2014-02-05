library level04_ex06;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

// code example starts below this line

import 'dart:async';

Future sayCatchphrase(String name, String catchphrase) {
  var catchphraseCompleter = new Completer();

  var oneSecond = new Duration(seconds:1);
  new Timer(oneSecond, () {
    var valueToReturn = '$name says "$catchphrase"';
    catchphraseCompleter.complete(valueToReturn);
  });

  return catchphraseCompleter.future;
}


main() {
  print("1. Main started");
  
  sayCatchphrase('The Dart', 'Code like a hero!').then( (value) => print(value) );
  
  print("2. Main finished");
}




