import 'dart:io';

void main() {
  print("enter the Amount= ");
  int amt = int.parse(stdin.readLineSync()!);
  if (amt > 100) {
    double tot = amt - (amt * 5 / 100);
    print(tot);
  } else {
    double tot = amt - (amt * 10 / 100);
    print(tot);
  }
}
