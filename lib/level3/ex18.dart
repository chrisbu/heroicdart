library level03_ex18;

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

String getFromCache(Map cacheMap, String key) {
 print('Reading cache for key: $key');
 return cacheMap.putIfAbsent(key, () {
   print('Cache miss for key: $key');
   return checkHeroOrSidekick(key); 
 });
}

main() {
  var heroMap = {};
  var theDartStatus = getFromCache(heroMap, 'The Dart');
  
  // later:  
  var theDartAgain = getFromCache(heroMap, 'The Dart');
  
  
  print('heroMap contains: $heroMap');
}
