library level03_ex17;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() {
  var heroMap = {'The Dart':null};
  
  heroMap.putIfAbsent('Captain Dart', () {
    return 'Hero';
  });
  
  heroMap.putIfAbsent('Captain Dart', () => 'Hero');

  print(heroMap);  
}