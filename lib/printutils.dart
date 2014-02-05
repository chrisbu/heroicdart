library printutils;

/// Some utils to allow verifying the core 'print()' statement output within a unit test

import 'dart:core' as core;

// a buffer containing everything that was printed since the last call to printSetup();
core.List printed = [];

// by default, don't show any output
core.bool showOutput = false;

print(msg) {
  printed.add(msg.toString()); // need to do the toString, because otherwise it doesn't like function closures.
  if (showOutput) corePrint(msg);
}

// Allow real printing from core
corePrint(msg) => core.print("PRINTING: $msg");



/// returns true if the thing was printed
core.bool isPrinted(expect, [elementIndex]) {
  if (elementIndex == null) {
    return printed.contains(expect);
  }
  else {
    return elementIndex < printed.length  && printed[elementIndex] == expect;  
  }
}

core.bool printedContains(expect) {
  for(core.String s in printed) {
    if (s.contains(expect)) {
      return true;
    }
  }
  return false; // else
}

// reset the printed buffer
printSetup({printToConsole:false}) {
  printed.clear();
  showOutput = printToConsole;
}
