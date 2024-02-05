//  "Sum and Product of Numbers"
// Write a Dart function that takes a list of integers as input and performs the following tasks:

// Calculate and return the sum of all the numbers in the list.
// Calculate and return the product of all the numbers in the list.

import 'dart:io';

void main() {
  List<int> lst = [];
  for (var i = 0; i < 4; i++) {
    stdout.write("Enter the number = ");
    int num = int.parse(stdin.readLineSync()!);
    lst.add(num);
  }
  int sum = add(lst);
  print("sum = $sum");
  int product = pro(lst);
  print("Product = $product");
}

int add(List<int> lst) {
  int res = 0;
  for (var i in lst) {
    res += i;
  }

  return res;
}

int pro(List<int> lst) {
  int res = 1;
  for (var i in lst) {
    res *= i;
  }

  return res;
}
