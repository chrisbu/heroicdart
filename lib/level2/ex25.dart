library level02_ex25;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;



main() {
  var message = "The Dart multiplies";      
  var theDartMultiplies = (m,n) => "$message: $m x $n = ${m*n}";
  
  message = "Prof. Polymer adds";
  var profPolymerAdds = (m,n) {
   return "$message: $m + $n = ${m+n}"; 
  };
    
  
  message = "We do some calculations";
  var answer1 = heroCalculator(50,3, theDartMultiplies);
  print(answer1);
  
  var answer2 = heroCalculator(3,50, profPolymerAdds);
  print(answer2);
}

String heroCalculator(num x, num y, calcFunction(n,m)) {
  if (x == 0 && y == 0) {
    return "That's not a heroic sum";
  } else {
    return calcFunction(x,y);  
  }
}
