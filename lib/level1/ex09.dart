library level01_ex09;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;




main() {
  var sidekick = "Prof. Polymer";
  var message = "$sidekick in lowercase is ${sidekick.toLowerCase()}"; 
  print(message);  
}
