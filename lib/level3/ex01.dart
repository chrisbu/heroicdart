library level03_ex01;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() { 
  var powerList = ['Coding', 'Testing', 'Flight', 'Speed'];
  print('Displaying heroic powers');
  for (var power in powerList) {
   print(power);
  }
  
  print('Printing the list of powers: $powerList');
}

