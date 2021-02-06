import 'dart:io';
import 'dart:core';

void main() {
  var Heading = YourName.heading();
  stdout.writeln("Enter your Date Of Birth.... \n (in this format YYYY-MM-DD)");
  var age = stdin.readLineSync();
  DateTime c = DateTime.parse(age);

  var content = YourName("I am here find your age", c);
  content.Age();
}

class YourName {
  String wellcomeNote;
  String BirthDate;
  DateTime dob;

  // Constructor, with syntactic sugar for assignment to members.
  YourName(this.wellcomeNote, this.dob) {
    // Initialization code goes here.
  }

  // Named constructor that forwards to the default one.
  YourName.heading() {
    print("Find Your Age");
  }

  int get BornYear => dob?.year; // read-only non-final property

  // Method.
  void Age() {
    print('$wellcomeNote');
    if (dob != null) {
      int years = DateTime.now().difference(dob).inDays ~/ 365;
      print('Your Age: $years years Old');
    } else {
      print('Undefineded');
    }
  }
}
