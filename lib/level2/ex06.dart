library level02_ex06;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

String checkHeroOrSidekick(String name) {
  if (name.contains('Dart')) {
    return 'Hero';
  } else {
    return 'Sidekick';
  }
}

main() {
  print('The Dart is a...');
  print(checkHeroOrSidekick('The Dart'));

  print('Prof. Polymer is a...');
  print(checkHeroOrSidekick('Prof. Polymer'));
}
