library level04_ex01;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

// code example starts below this line

import 'dart:async';



main() {
  print("1. Main started");
  var oneSecond = new Duration(seconds:1);

  new Timer(oneSecond, () => print("3. One second elapsed")  );

  print("2. Main finished");
}

