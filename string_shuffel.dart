// Write a Dart program that does the following:

// Create two lists of strings, each containing at least 5 items.

// Shuffle both lists randomly.

// Combine the shuffled lists into a single list.
// Sort the combined list in ascending order.

import 'dart:io';

void main() {
  List<String> lst = [];
  List<String> lst2 = [];
  for (int i = 0; i < 2; i++) {
    stdout.write("Enter $i name :");
    String str = stdin.readLineSync()!;
    lst.add(str);
  }
  for (int i = 0; i < 2; i++) {
    stdout.write("Enter $i surname :");
    String str1 = stdin.readLineSync()!;
    lst2.add(str1);
  }
  print(lst);
  lst.shuffle();
  print("Shuffle name =${lst}");
  print(lst2);
  lst2.shuffle();
  print("Shuffle surname =${lst2}");
  List<String> comb = [...lst, ...lst2];
  comb.sort();
  print(comb);
}
