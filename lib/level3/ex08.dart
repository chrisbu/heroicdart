library level03_ex08;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() { 
  var powerList = ['Coding', 'Testing', 'Flight', 'Speed'];
  
  var lengths = powerList.map((element) => element.length); 
  
  var totalLength = lengths.reduce((runningTotal, element) => runningTotal += element ); 
  
  print(totalLength);
  
}