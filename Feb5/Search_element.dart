// Task 4: "Finding Specific Elements"
// Write a Dart function that takes a list of strings as input and performs the following tasks:

// Find the first occurrence of the word "apple" in the list and print its index.
// Find the last occurrence of the word "orange" in the list and print its index.
// If the list contains the word "banana," print "Found banana!" Otherwise, print "Banana not found!"
import 'dart:io';

void main() {
  List<String> lst = [];
  for (var i = 0; i < 5; i++) {
    stdout.write("Enter the fruits = ");
    String str = stdin.readLineSync()!;
    lst.add(str);
  }
  print(lst);
  try {
    print("Apple at first =${lst.firstWhere((i) => i == "apple")}");
    print("index = ${lst.indexOf("apple")}");
  } catch (e) {
    print("Apple not there in list.");
  }
  try {
    print("Banana at first =${lst.lastWhere((i) => i == "banana")}");
    print("Index = ${lst.indexOf("banana")}");
  } catch (e) {
    print("Banana  not there in list.");
  }
}
