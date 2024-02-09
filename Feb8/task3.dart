import 'dart:io';

void main() {
  stdout.write("Enter the Temp=");
  int temp = int.parse(stdin.readLineSync()!);
  if (temp > 0) {
    print("ITs hot outside");
  } else {
    print("Its cold outside");
  }
}
