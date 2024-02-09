import 'dart:io';

void main() {
  stdout.write("Enter the num=");
  int num = int.parse(stdin.readLineSync()!);
  if (num > 0) {
    print("ITs a positive no");
  } else {
    print("Its a negative no");
  }
}
