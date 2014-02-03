library level03_ex09;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() {
  var mapperFunc = (element) => element.length;
  var reducerFunc = (currentMax, element) => element > currentMax ? element : currentMax;
  
  var heroList = ['The Dart', 'Prof. Polymer', 'Captain Dart', 'Bullseye'];
  
  var maxLength = heroList.map(mapperFunc).reduce(reducerFunc); 
  
  print(maxLength);
}