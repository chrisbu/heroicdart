library level03_ex03;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() { 
  var powerList = ['Coding', 'Testing', 'Flight', 'Speed'];
  var joinedList = powerList.join(', '); // add a comma space between each element
  print('The Dart has $joinedList superpowers');
}