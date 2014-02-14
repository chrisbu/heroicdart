library level02_ex25;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;



Function buildCalcFunc(String message) {
 return  (m,n) => "$message: $m x $n = ${m*n}";
}


main() {
  var message = "The Dart multiplies";      
  var theDartMultiplies = buildCalcFunc(message);
  
  message = "Prof. Polymer squares";
  
  var profPolymerSquares = buildCalcFunc(message);
  
  message = "We do some calculations";
  var answer1 = heroCalculator(50,3, theDartMultiplies);
  print(answer1);
  
  var answer2 = heroCalculator(3,3, profPolymerSquares);
  print(answer2);
}

String heroCalculator(num x, num y, calcFunction(n,m)) {
  if (x == 0 && y == 0) {
    return "That's not a heroic sum";
  } else {
    return calcFunction(x,y);  
  }
}