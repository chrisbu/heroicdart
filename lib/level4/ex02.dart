library level04_ex02;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

// code example starts below this line

import 'dart:async';

sayCatchphrase(String name, String catchphrase) {
  var oneSecond = new Duration(seconds:1);

  new Timer(oneSecond, () {
      print('$name says "$catchphrase"');
  });
}

main() {
  print("1. Main started");
  sayCatchphrase('The Dart', 'Code like a hero!');
  print("2. Main finished");
}




