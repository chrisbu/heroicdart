library level03_ex04;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;




main() { 
  var powerList = ['Coding', 'Testing', 'Flight', 'Speed'];
  var hasAny = powerList.any((element) => element.endsWith('ing'));
  print(hasAny);
}