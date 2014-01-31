library level02_ex23;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;


String heroCalculator(num x, num y, calcFunction(n,m)) {
  if (x == 0 && y == 0) {
    return "That's not a heroic sum";
  } else {
    return calcFunction(x,y);  
  }
}

main() {
  var theDartMultiplies = (m,n) => "The Dart multiplies: $m x $n = ${m*n}";
  var profPolymerAdds = (m,n) {
   return "Prof. Polymer adds: $m + $n = ${m+n}"; 
  }; 
  
  var answer1 = heroCalculator(50,3, theDartMultiplies);
  print(answer1);
  
  var answer2 = heroCalculator(3,50, profPolymerAdds);
  print(answer2);
}

