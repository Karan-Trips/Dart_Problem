// Task 6: "Using 'fold' for String Concatenation"
// Write a Dart function that takes a list of strings as input and uses the fold method
//to concatenate all the strings into a single string. Print the resulting string to the console.
import 'dart:io';

void main() {
  List<String> lst = [];
  for (var i = 0; i < 3; i++) {
    stdout.write("Enter the fruits = ");
    String str = stdin.readLineSync()!;
    lst.add(str);
  }
  print(lst);
  String fold = concat(lst);
  print("$fold");
}

String concat(List<String> lst) {
  return lst.fold("", (previousValue, element) => previousValue + element);
}
