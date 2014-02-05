library level04_ex08;

import 'package:heroicdart/printutils.dart';
import 'dart:core' hide print;
export 'package:heroicdart/printutils.dart' show printSetup, isPrinted;

// code example starts below this line

import 'dart:async';

main() {
  var onHeroData = (name) => print('Just seen: $name');
  var onHeroesFinished = () => print('No more heroes (anymore)');

  var stream = watchHeroes();

  stream.listen(onHeroData, onDone: onHeroesFinished);
}



// API below

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