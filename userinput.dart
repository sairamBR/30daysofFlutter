import 'dart:io';

void main() {
  var person1 = person();
  stdout.writeln("enter the name:?");
  person1.NAME = stdin.readLineSync();
  person1.dob = DateTime(20, 09, 1999);
  print("NAME: ${person1.NAME} \nDate of Birth: ${person1.dob}");

  person1.age();
}

class person {
  String NAME;
  DateTime dob;

  person() {
    print("Find Your age....");
  }

  int get DoB => dob?.year;

  void age() {
    if (DoB != null) {
      int years = DateTime.now().difference(dob).inDays ~/ 365;
      print("Age is $years");
    }
  }
}
