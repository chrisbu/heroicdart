library level03_ex11;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() {
  var powers = ['Coding', 'Testing', 'Flight', 'Speed'];
  var powerText = powers.where((element) => element.endsWith('ing'))
      .map((element) => 'Super$element')
      .join(', ');
  
  print('Heroic coding includes: $powerText');
}