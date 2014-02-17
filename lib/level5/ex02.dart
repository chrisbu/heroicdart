library level05_ex02;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;


class Hero {

}

class Sidekick  { 

}


main() {
  var myHero = new Hero();
  var mySidekick = new Sidekick();
  print(myHero);
  print(mySidekick);
}