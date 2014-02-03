library level03_ex11;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() {
  var powerList = ['Coding', 'Testing', 'Flight', 'Speed'];
  var powerText = powerList.where((element) => element.endsWith('ing'))
      .map((element) => 'Super$element')
      .join(', ');
  
  print('Heroic coding includes: $powerText');
}