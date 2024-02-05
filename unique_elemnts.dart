// Task 3: "Unique Elements and Sublists"
// Write a Dart function that takes a list of integers as input and performs the following tasks:

// Remove all duplicate elements from the list.
// Create two sublists from the modified list:
// Sublist 1: Contains the first half of the elements.
// Sublist 2: Contains the second half of the elements.
// Print both sublists to the console.
import 'dart:io';

void main() {
  List<int> lst = [];
  for (var i = 0; i < 5; i++) {
    stdout.write("enter the number :");
    int num = int.parse(stdin.readLineSync()!);
    lst.add(num);
  }
  print("original list =$lst");
  List<int> uniq = lst.toSet().toList();
  print(uniq);
  List<int> sub1 = uniq.sublist(0, uniq.length ~/ 2);
  print("1st half = $sub1");
  List<int> sub2 = uniq.sublist(uniq.length ~/ 2);
  print("2 nd half = $sub2");
}
