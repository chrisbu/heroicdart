import 'package:unittest/unittest.dart';
import 'package:heroicdart/printutils.dart' hide print;
import 'dart:async';

// level 1
import 'package:heroicdart/level1/ex01.dart' as l01ex01;
import 'package:heroicdart/level1/ex02.dart' as l01ex02;
import 'package:heroicdart/level1/ex03.dart' as l01ex03;
import 'package:heroicdart/level1/ex04.dart' as l01ex04;
import 'package:heroicdart/level1/ex05.dart' as l01ex05;
import 'package:heroicdart/level1/ex06.dart' as l01ex06;
import 'package:heroicdart/level1/ex07.dart' as l01ex07;
import 'package:heroicdart/level1/ex08.dart' as l01ex08;
import 'package:heroicdart/level1/ex09.dart' as l01ex09;

// level 2
import 'package:heroicdart/level2/ex01.dart' as l02ex01;
import 'package:heroicdart/level2/ex02.dart' as l02ex02;
import 'package:heroicdart/level2/ex03.dart' as l02ex03;
import 'package:heroicdart/level2/ex04.dart' as l02ex04;
import 'package:heroicdart/level2/ex05.dart' as l02ex05;
import 'package:heroicdart/level2/ex06.dart' as l02ex06;
import 'package:heroicdart/level2/ex07.dart' as l02ex07;
import 'package:heroicdart/level2/ex08.dart' as l02ex08;
import 'package:heroicdart/level2/ex09a.dart' as l02ex09a;
import 'package:heroicdart/level2/ex09b.dart' as l02ex09b;
import 'package:heroicdart/level2/ex10.dart' as l02ex10;
import 'package:heroicdart/level2/ex11.dart' as l02ex11;
import 'package:heroicdart/level2/ex12.dart' as l02ex12;
import 'package:heroicdart/level2/ex13.dart' as l02ex13;
import 'package:heroicdart/level2/ex14.dart' as l02ex14;
import 'package:heroicdart/level2/ex15.dart' as l02ex15;
import 'package:heroicdart/level2/ex16.dart' as l02ex16;
import 'package:heroicdart/level2/ex17.dart' as l02ex17;
import 'package:heroicdart/level2/ex18.dart' as l02ex18;
import 'package:heroicdart/level2/ex19.dart' as l02ex19;
import 'package:heroicdart/level2/ex20.dart' as l02ex20;
import 'package:heroicdart/level2/ex21.dart' as l02ex21;
import 'package:heroicdart/level2/ex22.dart' as l02ex22;
import 'package:heroicdart/level2/ex23.dart' as l02ex23;
import 'package:heroicdart/level2/ex24.dart' as l02ex24;
import 'package:heroicdart/level2/ex25.dart' as l02ex25;

// level 3
import 'package:heroicdart/level3/ex01.dart' as l03ex01;
import 'package:heroicdart/level3/ex02.dart' as l03ex02;
import 'package:heroicdart/level3/ex02a.dart' as l03ex02a;
import 'package:heroicdart/level3/ex03.dart' as l03ex03;
import 'package:heroicdart/level3/ex04.dart' as l03ex04;
import 'package:heroicdart/level3/ex05.dart' as l03ex05;
import 'package:heroicdart/level3/ex06.dart' as l03ex06;
import 'package:heroicdart/level3/ex07.dart' as l03ex07;
import 'package:heroicdart/level3/ex08.dart' as l03ex08;
import 'package:heroicdart/level3/ex09.dart' as l03ex09;
import 'package:heroicdart/level3/ex10.dart' as l03ex10;
import 'package:heroicdart/level3/ex11.dart' as l03ex11;
import 'package:heroicdart/level3/ex12.dart' as l03ex12;
import 'package:heroicdart/level3/ex13.dart' as l03ex13;
import 'package:heroicdart/level3/ex14.dart' as l03ex14;
import 'package:heroicdart/level3/ex15.dart' as l03ex15;
import 'package:heroicdart/level3/ex16.dart' as l03ex16;
import 'package:heroicdart/level3/ex17.dart' as l03ex17;
import 'package:heroicdart/level3/ex18.dart' as l03ex18;
import 'package:heroicdart/level3/ex19.dart' as l03ex19;
import 'package:heroicdart/level3/ex20.dart' as l03ex20;


// level 4
import 'package:heroicdart/level4/ex01.dart' as l04ex01;
import 'package:heroicdart/level4/ex02.dart' as l04ex02;
import 'package:heroicdart/level4/ex03.dart' as l04ex03;
import 'package:heroicdart/level4/ex04.dart' as l04ex04;
import 'package:heroicdart/level4/ex05.dart' as l04ex05;
import 'package:heroicdart/level4/ex06.dart' as l04ex06;
import 'package:heroicdart/level4/ex07.dart' as l04ex07;
import 'package:heroicdart/level4/ex08.dart' as l04ex08;

// don't bother actually outputting all the "print" statements to the console.
final PRINT_TO_CONSOLE = false;

// wrap expect
expectTrue(actual) => expect(actual,true);

main() { 
  group("", () {
    // note: add this
    // printSetup(printToConsole:true);
    // to the beginning of a test to see just that test print something

    setUp(() => printSetup(printToConsole:PRINT_TO_CONSOLE)); // clear the print buffer before each test
    
    group("Level 1:", level1tests);
    group("Level 2:", level2tests);
    group("Level 3:", level3tests);
    group("Level 4:", level4tests);
  });
  
}



level1tests() {
  group("Dart's print() function:", () {
    test("ex 1", () {
      l01ex01.main();
      expectTrue(isPrinted("Hello, The Dart"));
    });
    
    test("ex 2", () {
      l01ex02.main();
      expectTrue(isPrinted("Anything"));
    });
  });
  
  group("Storing variables and optional typing:", () {
    
    test("ex 3", () {
      l01ex03.main();
      expectTrue(isPrinted("hero is a String"));
      expectTrue(isPrinted("sidekick is a String"));
    });
    
    test("ex 4", () {
      var error = null;
      try {
        l01ex04.main();
      }
      on NoSuchMethodError catch (e) {
        error = e;
      }
      expectTrue(error.toString().contains("No top-level setter 'isDartAwesome' declared."));
    });
    
    test("ex 5 before editing", () {
      l01ex05.main_before_editing();
      expect(isPrinted("I think you are wrong - The Dart is Epic!"), isFalse);
    });
    
    test("ex 5 after editing", () {
      var error = null;
      try {
        l01ex05.main_after_editing();
      }
      on NoSuchMethodError catch (e) {
        error = e;
      }
      expect(isPrinted("I think you are wrong - The Dart is Epic!"), isFalse);
      expectTrue(error.toString().contains("No top-level setter 'isTheDartEpic' declared."));      
    });
    
    test("ex 6 before editing", () {
      l01ex06.main_before_editing();
      // expect nothing
    });
    
    test("ex 6 after editing", () {
      var error = null;
      try {
        l01ex06.main_after_editing();
      }
      on TypeError catch (e) {
        error = e;
      }
      expectTrue(error.toString().contains("type 'int' is not a subtype of type 'String' of 'hero'."));
    });
    
  });
  
  group("Strings and string interpolation:", () {
    
    test("ex 7", () {
      l01ex07.main();
      expectTrue(isPrinted("""Some
user
text"""));
    });
    
    test("ex 8", () {
      l01ex08.main();
      expectTrue(isPrinted("The Dart in uppercase is THE DART"));
    });
    
    test("ex 9", () {
      l01ex09.main();
      expectTrue(isPrinted("Prof. Polymer in lowercase is prof. polymer"));
    });
  });

}

level2tests() {
  group("Functions are not sidekicks:", () {
    
    group(":", () {      
      test("ex 1", () {
        l02ex01.main();
        expectTrue(isPrinted('The Dart says "Code like a hero with Dart"',0));
        expectTrue(isPrinted('The Dart says "Code like a hero with Dart"',1));
        expectTrue(isPrinted('The Dart says "Code like a hero with Dart"',2));      
      });
      
      test("ex 2", () {
        var error = null;
        try {
          l02ex02.main();
        }
        on TypeError catch (e) {
          error = e;
        }
        expectTrue(isPrinted('The Dart says "Code like a hero with Dart"',0));
        expectTrue(isPrinted('The Dart says "Code like a hero with Dart"',1));
        expectTrue(isPrinted('The Dart says "Code like a hero with Dart"',2));
        expectTrue(error.toString().contains("type 'bool' is not a subtype of type 'String' of 'name'."));      
      });
    });
    
    group("Function return values:", () {
      test("ex 3", () {
        l02ex03.main();
        expectTrue(isPrinted('The Dart says "Code like a hero with Dart"',0));
        expectTrue(isPrinted('The Dart says "Code like a hero with Dart"',1));
        expectTrue(isPrinted('The Dart says "Code like a hero with Dart"',2));      
      });
      
      test("ex 4", () {
        l02ex04.main();
        expectTrue(isPrinted('The Dart is a Hero'));            
      });
      
      test("ex 5", () {
        l02ex05.main();
        expectTrue(isPrinted('The Dart is a Hero'));            
      });
    });
    
    test("ex 6", () {
      l02ex06.main();
      expectTrue(isPrinted('The Dart is a...',0));
      expectTrue(isPrinted('Hero',1));
      expectTrue(isPrinted('Prof. Polymer is a...',2));
      expectTrue(isPrinted('Sidekick',3));
    });
    
    group("Single-line functions:", () {
      test("ex 7", () {
        l02ex07.main();
        expectTrue(isPrinted('Look, there goes The Dart'));            
      });
      
      test("ex 8", () {
        l02ex08.main();
        expectTrue(isPrinted('Look, there goes The Dart',0));
        expectTrue(isPrinted('LOOK, THERE GOES THE DART',1));
      });
    });
    
    group("Variables outside functions: ex 9", () {
      test("DEBUG=false", () {
        l02ex09a.main();
        expectTrue(isPrinted('Look, there goes The Dart'));      
        expect(isPrinted('LOG: We have a hero: The Dart'), false);
      });
      
      test("DEBUG=true", () {
        l02ex09b.main();
        expectTrue(isPrinted('LOG: We have a hero: The Dart',0));
        expectTrue(isPrinted('Look, there goes The Dart',1));      
      });
    });
    
    group("Lexical scope:", () {
      test("ex 10", () {
          // l02ex10.main(); - this is a syntax error, so can't even run this
      });
      
      test("ex 11", () {
        l02ex11.main();
        expectTrue(isPrinted('LOG: Look, there goes The Dart',0));
        expectTrue(isPrinted('Move along please... nothing to see here',1));
      });
    });
    
    group("Optional positional parameters:", () {
      test("ex 12", () {
        var error = null;
        try {
          l02ex12.main();
        }
        on NoSuchMethodError catch (e) {
          error = e;
        }
        expectTrue(isPrinted('The Dart says "Code like a hero"',0));
        expectTrue(isPrinted('The Dart says "Code like a hero"',1));
        expectTrue(isPrinted('The Dart says "Code like a hero"',2));
        expectTrue(error.toString().contains("The null object does not have a method '>'"));
      });
      
      test("ex 13", () {
        l02ex13.main();
        expectTrue(isPrinted('The Dart says "Code like a hero"',0));
        expectTrue(isPrinted('The Dart says "Code like a hero"',1));
        expectTrue(isPrinted('The Dart says "Code like a hero"',2));
        expectTrue(isPrinted('Prof. Polymer says "ShadowDOM is cool"',3));
        expectTrue(isPrinted('Captain Dart says "Hello"',4));
      });
      
      test("ex 14", () {
        l02ex14.main();
        expectTrue(isPrinted('The Dart is a Hero'));      
      });
    
      test("ex 15", () {
        l02ex15.main();
        expectTrue(isPrinted('The Dart is a Superhero',0));      
        expectTrue(isPrinted('Prof. Polymer is a great sidekick',1));
      });
    });
    
    group("Optional named parameters:", () {
      test("ex 16", () {
        l02ex16.main();
        expectTrue(isPrinted('The Dart says "Hello"',0));      
        expectTrue(isPrinted('The Dart says "Hello"',1));
        expectTrue(isPrinted('The Dart says "Hello"',2));
      });
      
      test("ex 17", () {
        l02ex17.main();
        expectTrue(isPrinted('Captain Dart is a Hero'));      
      });
      
      test("ex 18", () {
        l02ex18.main();
        expectTrue(isPrinted('Captain Dart is a Superhero',0));      
        expectTrue(isPrinted('Bullseye is a super-dog',1));
      });
    });
    
    group("Functions as objects:", () {      
      test("ex 19", () {
        l02ex19.main();
        expectTrue(isPrinted("Closure: (String, {catchphrase: String}) => String from Function 'getCatchphrase': static."));      
      });
      
      test("ex 20", () {
        l02ex20.main();
        expectTrue(isPrinted('The Dart says "Hello"'));      
      });
      
      test("ex 21", () {
        l02ex21.main();
        expectTrue(isPrinted('The Dart says "Hello"'));      
      });
      
      test("ex 22", () {
        l02ex22.main();
        expectTrue(isPrinted('The Dart says "Hello"'));      
      });
    });
    
    group("Functions as arguments:", () {
      test("ex 23", () {
        l02ex23.main();
        expectTrue(isPrinted('The Dart multiplies: 50 x 3 = 150',0));
        expectTrue(isPrinted('Prof. Polymer adds: 3 + 50 = 53',1));
      });
      
      test("ex 24", () {
        l02ex24.main();
        expectTrue(isPrinted('The Dart multiplies: 50 x 3 = 150',0));
        expectTrue(isPrinted('Prof. Polymer adds: 3 + 50 = 53',1));
      });
      
      
    });
    
    group("Closures:", () {
      test("ex 25", () {
        l02ex25.main();
        expectTrue(isPrinted('We do some calculations: 50 x 3 = 150',0));
        expectTrue(isPrinted('We do some calculations: 3 + 50 = 53',1));
      });
    });
  });  
}

level3tests() {
  group("Heroic Collections:", () {
    group("Iterables:", () {
      test("ex 1", () {
        l03ex01.main();
        expectTrue(isPrinted('Iterating list items',0));
        expectTrue(isPrinted('Coding',1));
        expectTrue(isPrinted('Testing',2));
        expectTrue(isPrinted('Flight',3));
        expectTrue(isPrinted('Speed',4));
        expectTrue(isPrinted('Iterating set items',5));
        expectTrue(isPrinted('Coding',6));
        expectTrue(isPrinted('Testing',7));
        expectTrue(isPrinted('Flight',8));
        expectTrue(isPrinted('Speed',9));
      });
      
      test("ex 2", () {
        l03ex02.main();
        expectTrue(isPrinted('List: [Coding, Testing, Flight, Speed, Coding]',0));
        expectTrue(isPrinted('Set: {Coding, Testing, Flight, Speed}',1));
      });
      
      test("ex 2a", () {
        l03ex02a.main();
        expectTrue(isPrinted('Testing',0));
        expectTrue(isPrinted('[Coding, Unit testing, Flight, Speed]',1));
      });
      
      test("ex 3", () {
        l03ex03.main();
        expectTrue(isPrinted('The Dart has Coding, Testing, Flight, Speed superpowers'));
      });
      
      test("ex 4", () {
        l03ex04.main();
        expectTrue(isPrinted('true'));
      });
  
      test("ex 5", () {
        l03ex05.main();
        expectTrue(isPrinted('Testing'));
      });
      
      test("ex 6", () {
        l03ex06.main();
        expectTrue(isPrinted('SuperCoding',0));
        expectTrue(isPrinted('SuperTesting',1));
        expectTrue(isPrinted('SuperFlight',2));
        expectTrue(isPrinted('SuperSpeed',3));        
      });
      
      test("ex 7", () {
        l03ex07.main();
        expectTrue(isPrinted('(6, 7, 6, 5)'));
      });
      
      test("ex 8", () {
        l03ex08.main();
        expectTrue(isPrinted('24'));
      });
      
      test("ex 9", () {
        l03ex09.main();
        expectTrue(isPrinted('13'));
      });
      
      test("ex 10", () {
        l03ex10.main();
        expectTrue(isPrinted('(Coding, Testing)'));
      });
      
      test("ex 11", () {
        l03ex11.main();     
        expectTrue(isPrinted('Heroic coding includes: SuperCoding, SuperTesting'));
      });
    });
    
    group("Maps:", () {
      test("ex 12", () {
        l03ex12.main();
        expectTrue(isPrinted('heroMap: {The Dart: Hero, Prof. Polymer: Sidekick}'));        
      });
      
      test("ex 13", () {
        l03ex13.main();
        expectTrue(isPrinted("Captain Dart's status is: Hero"));        
      });
      
      test("ex 14", () {
        l03ex14.main();
        expectTrue(isPrinted("Bullseye's status is: Sidekick"));        
      });
      
      test("ex 15", () {
        l03ex15.main();
        expectTrue(isPrinted("The Dart is null",0));        
        expectTrue(isPrinted("Prof. Polymer is null",1));
      });
      
      test("ex 16", () {
        l03ex16.main();
        expectTrue(isPrinted("Prof. Polymer isn't in the map",0));        
        expectTrue(isPrinted("Adding Prof. Polymer",1));
        expectTrue(isPrinted("{The Dart: null, Prof. Polymer: Sidekick}",2));
      });
      
      test("ex 17", () {
        l03ex17.main();
        expectTrue(isPrinted("{The Dart: null, Captain Dart: Hero}"));
      });

      test("ex 18", () {
        l03ex18.main();
        expectTrue(isPrinted("Reading cache for key: The Dart",0));
        expectTrue(isPrinted("Cache miss for key: The Dart",1));
        expectTrue(isPrinted("Reading cache for key: The Dart",2));
        expectTrue(isPrinted("heroMap contains: {The Dart: Hero}",3));
      });
      
      test("ex 19", () {
        l03ex19.main();
        expectTrue(isPrinted("The Dart: status = Hero",0));
        expectTrue(isPrinted("Prof. Polymer: status = Sidekick",1));
      });
      
      test("ex 20", () {
        l03ex20.main();
        expectTrue(isPrinted("The Dart: status = Hero",0));
        expectTrue(isPrinted("Prof. Polymer: status = Sidekick",1));
      });
    });
  });
}

level4tests() {
  group("Asynchronous Dart:", () {
    group("Seeing into the future:", () {
      
      test("ex 01", () {
        l04ex01.main();
        expectTrue(isPrinted('1. Main started',0));
        expectTrue(isPrinted('2. Main finished',1));
        new Timer(new Duration(milliseconds:1500), expectAsync0(() => expectTrue(isPrinted('3. One second elapsed',2))));
      });
      
      test("ex 02", () {
        l04ex02.main();
        expectTrue(isPrinted('1. Main started',0));
        expectTrue(isPrinted('2. Main finished',1));
        new Timer(new Duration(milliseconds:1500), expectAsync0(() {
          expectTrue(isPrinted('The Dart says "Code like a hero!"',2));
        }));
      });
      
      test("ex 03", () {
        l04ex03.main();
        expectTrue(isPrinted('1. Main started',0));
        expectTrue(isPrinted('null',1));
        expectTrue(isPrinted('2. Main finished',2));
      });
    });
    
    group('Heroes from the future', () {
      test("ex 04", () {
        l04ex04.main();
        expectTrue(isPrinted('1. Main started',0));
        expectTrue(printedContains("Instance of '_Future'"));
        expectTrue(isPrinted('2. Main finished',2));
      });
      
      test("ex 05", () {
        l04ex05.main();
        expectTrue(isPrinted('1. Main started',0));
        expectTrue(isPrinted('2. Main finished',1));
        new Timer(new Duration(milliseconds:1500), expectAsync0(() {
          expectTrue(isPrinted('The Dart says "Code like a hero!"',2));
        }));
      });
      
      test("ex 06", () {
        l04ex06.main();
        expectTrue(isPrinted('1. Main started',0));
        expectTrue(isPrinted('2. Main finished',1));
        new Timer(new Duration(milliseconds:1500), expectAsync0(() {
          expectTrue(isPrinted('The Dart says "Code like a hero!"',2));
        }));
      });
    });
    
    group('Reading streams of data', (){
      test("ex 07", () {
        l04ex07.main();
        new Timer(new Duration(milliseconds:4500), expectAsync0(() {
          expectTrue(isPrinted('Just seen: The Dart',0));
          expectTrue(isPrinted('Just seen: Prof. Polymer',1));
          expectTrue(isPrinted('Just seen: Captain Dart',2));
          expectTrue(isPrinted('Just seen: Bullseye',3));
        }));
      });
      
      test("ex 08", () {
        l04ex08.main();
        new Timer(new Duration(milliseconds:5500), expectAsync0(() {
          expectTrue(isPrinted('Just seen: The Dart',0));
          expectTrue(isPrinted('Just seen: Prof. Polymer',1));
          expectTrue(isPrinted('Just seen: Captain Dart',2));
          expectTrue(isPrinted('Just seen: Bullseye',3));
          expectTrue(isPrinted('No more heroes (anymore)',4));
        }));
      });
    });
  });
}