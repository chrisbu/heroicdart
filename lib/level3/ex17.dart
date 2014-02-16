library level03_ex17;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() {
  var heroes = {'The Dart':null};
  
  heroes.putIfAbsent('Captain Dart', () {
    return 'Hero';
  });
  
  heroes.putIfAbsent('Captain Dart', () => 'Hero');

  print(heroes);  
}