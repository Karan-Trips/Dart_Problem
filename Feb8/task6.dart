import 'dart:io';

enum Mon { jan, feb, mar, june, apr, may }

void main() {
  stdout.write("Enter the numer = ");
  int num = int.parse(stdin.readLineSync()!);
  switch (num) {
    case 1:
      print(Mon.jan.name);
      break;
    case 2:
      print(Mon.feb.name);
      break;
    case 3:
      print(Mon.mar.name);
      break;
    case 4:
      print(Mon.apr.name);
      break;
    case 5:
      print(Mon.may.name);
      break;
    case 6:
      print(Mon.june.name);
      break;
    default:
      print("!!!Enter the valid number !!!");
  }
}
