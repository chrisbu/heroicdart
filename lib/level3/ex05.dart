library level03_ex05;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() { 
  var powerList = ['Coding', 'Testing', 'Flight', 'Speed'];
  var lastDevPower = powerList.lastWhere((element) => element.endsWith('ing'));
  print(lastDevPower);
}