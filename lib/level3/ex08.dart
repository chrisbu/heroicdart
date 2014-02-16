library level03_ex08;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() { 
  var powerList = ['Coding', 'Testing', 'Flight', 'Speed'];
  
  var lengths = powerList.map((element) => element.length); // iterable of lengths 
  
  // reduce the lengths iterable to a single value
  var totalLength = lengths.reduce((runningTotal, element) => runningTotal += element ); 
  
  print(totalLength);
  
}