import 'dart:io';

void main() {
  try {
    stdout.write("Enter the no:");
    int num = int.parse(stdin.readLineSync()!);
    print("Digit is = $num");
    print("${palindrome(num)}");
  } catch (e) {
    print("add only Intger not sring");
  }
}

palindrome(int num) {
  String str = num.toString();
  String rev = str.split("").reversed.join();
  if (str == rev) {
    print("It is Palindrome number");
    return rev;
  } else {
    print("Its not palindrome");
    return str;
  }
}
