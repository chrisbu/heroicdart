library level03_ex02;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() { 
  var powerList = ['Coding', 'Testing', 'Flight', 'Speed'];
  powerList.add('Coding');
  print('List: $powerList');
  
  var powerSet = new Set.from(powerList);
  powerSet.add('Coding');
  print('Set: $powerSet');
}

