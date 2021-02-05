import 'dart:io';

void main() {
  stdout.writeln("what programming language you wirting now: ?");
  String langName = stdin.readLineSync();
  if (langName == 'dart') {
    print("same pinch me too using " + langName);
  } else if (langName == 'Dart') {
    print("same pinch me too using " + langName);
  } else {
    print(" No! fucking shit You using the Dart programing ");
  }
}
