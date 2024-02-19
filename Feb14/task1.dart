import 'dart:io';

void main() {
  print("ENter the mobile num=");
  int phno = int.parse(stdin.readLineSync()!);
  print(phno.Validation() ? "isvalid" : "not valid");
  // print("it is valid phone number");
  // print(phno.runtimeType);
  print("Enter the first name = ");
  String fname = stdin.readLineSync()!;
  print(fname.nameValidation() ? "Valid" : "not valid");
  print("Enter the last name = ");
  String lname = stdin.readLineSync()!;
  print(lname.nameValidation() ? "Valid" : "not valid");
}

extension ph_validation on int {
  bool Validation() {
    if (this.toString().length == 10 && this.runtimeType == int) {
      return true;
    } else {
      return false;
    }
  }
}

extension Fname on String {
  bool nameValidation() {
    if (this.toString().startsWith(RegExp(r'[A-Z]')) &&
        this.toString().length >= 3 &&
        this.runtimeType == String &&
        !this.toString().contains(RegExp(r'[0-9]')) &&
        !this.toString().contains(" ")) {
      return true;
    } else {
      return false;
    }
  }
}
