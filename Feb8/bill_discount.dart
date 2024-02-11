import 'dart:io';

void main() {
  print("enter the Amount= ");
  int amount = int.parse(stdin.readLineSync()!);
  if (amount > 100) {
    double total = amount - (amount * 5 / 100);
    print(total);
  } else {
    double total = amount - (amount * 10 / 100);
    print(total);
  }
}
