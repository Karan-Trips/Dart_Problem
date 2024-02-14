import 'dart:io';

void main() {
  int sum = 0;
  print("enter the no=");
  int num = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= num; i++) {
    if (i % 2 == 0) {
      sum += i;
    }
  }
  print(sum);
}
