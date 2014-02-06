library level04_ex11;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

// code example starts below this line

import 'dart:async';

main() {
  var stream = watchHeroes();
  var broadcastStream = stream.asBroadcastStream();
  
  // listen for 'Hero'
  broadcastStream
    .where((name) => checkHeroOrSidekick(name) == 'Hero')
    .listen((name) => print('Seen hero: $name'), 
            onDone: () => print('No more heroes (anymore)'));
  
  // listen for 'Sidekick'
  broadcastStream
    .where((name) => checkHeroOrSidekick(name) == 'Sidekick')
    .listen((name) => print('Seen sidekick: $name'), 
            onDone: () => print('No more sidekicks (anymore)'));
}



// API below

checkHeroOrSidekick(String name) {   
  if (name.contains("Dart")) {
    return "Hero";
  } else {
    return "Sidekick";   
  }
}

Stream watchHeroes() {
  var heroes = ["The Dart", "Prof. Polymer", "Captain Dart", "Bullseye"];

  // Create a stream controller
  var streamController = new StreamController();  

  // Starting after 1 second, while not at the end of the list, 
  // add the next hero into the stream
  int heroIndex = 0; 
  new Timer.periodic(new Duration(seconds:1), (Timer t) {
    if (heroIndex < heroes.length) {
      streamController.add(heroes[heroIndex++]);
    } else {
      // no more heroes left
      t.cancel(); 
      streamController.close();
     }
  });
  
  // return the stream from the controller.  This will happen before the 
  // timer's first one-second tick
  return streamController.stream;
}