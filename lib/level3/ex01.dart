library level03_ex01;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() { 
  var powerList = ['Coding', 'Testing', 'Flight', 'Speed'];
  print('Iterating list items');
  for (var power in powerList) {
   print(power);
  }
  
  var powerSet = new Set.from(powerList);
  print('Iterating set items');
  for (var power in powerSet) {
   print(power);
  }

  print('Printing a list: $powerList');
  print('Printing a set: $powerSet');
  
}

