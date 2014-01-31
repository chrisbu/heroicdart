import 'package:unittest/unittest.dart';
import 'package:heroicdart/printutils.dart' hide print;

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
        printSetup(printToConsole: true);
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
  });  
}