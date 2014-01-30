import 'package:unittest/unittest.dart';
import 'package:heroicdart/printutils.dart' hide print;

 
import 'package:heroicdart/level1/ex01.dart' as l01ex01;
import 'package:heroicdart/level1/ex02.dart' as l01ex02;
import 'package:heroicdart/level1/ex03.dart' as l01ex03;
import 'package:heroicdart/level1/ex04.dart' as l01ex04;
import 'package:heroicdart/level1/ex05.dart' as l01ex05;
import 'package:heroicdart/level1/ex06.dart' as l01ex06;
import 'package:heroicdart/level1/ex07.dart' as l01ex07;
import 'package:heroicdart/level1/ex08.dart' as l01ex08;
import 'package:heroicdart/level1/ex09.dart' as l01ex09;


main() { 
  group("Level 1:", level1tests);
}

final PRINT_TO_CONSOLE = false;

expectTrue(actual) => expect(actual,true);

level1tests() {
  setUp() => printSetup(printToConsole:PRINT_TO_CONSOLE);

  // note: add this
  // printSetup(printToConsole:true);
  // to the beginning of a test to see just that test print something

  
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

