library level03_ex10;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

main() {
  var powers = ['Coding', 'Testing', 'Flight', 'Speed'];
  var devPowers = powers.where((element) => element.endsWith('ing')); 
  
  print(devPowers);
}