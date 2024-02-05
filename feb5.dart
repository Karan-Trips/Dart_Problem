// Write a Dart function that takes a list of integers as input and performs the following tasks:

// Filter out all the even numbers from the list and create a new list with only the odd numbers.
// Double the value of each odd number in the new list.
// Return the final modified list.

import 'dart:io';

void main() {
  List<int> lst = [];
  int size = 4;
  for (int i = 0; i < size; i++) {
    stdout.write("Enter the no $i. : ");
    int add = int.parse(stdin.readLineSync()!);
    lst.add(add);
  }
  print("list is = $lst");
  List<int> odd = lst.where((i) => i % 2 != 0).toList();

  print("odd = $odd");

  List<int> db = [];
  int res;

  for (int i = 0; i < odd.length; i++) {
    res = odd[i] * 2;
    db.add(res);
  }
  print(db);
}
