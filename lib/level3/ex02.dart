library level03_ex02;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() { 
  var powerList = ['Coding', 'Testing', 'Flight', 'Speed'];
  print(powerList[1]);
  powerList[1] = 'Unit testing';
  print(powerList);
}