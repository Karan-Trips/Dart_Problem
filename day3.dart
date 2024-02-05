// =--------------------- DAY -2----------------------

// ------------------Task - 1----------------------

// void main(List<String> args) {
//   String str = args[0];

//   String str2 = args[1];

//   if (args.length != 2) {
//     print("Enter the 2 string");
//     return;
//   }

//   String rev = reverse(str);

//   String rev2 = reverse(str2);

//   print("string reverse: $rev $rev2");

// }

// String reverse(String str) {
//   int size = str.length;

//   String reversed = "";

//   for (int i = size - 1; i >= 0; i--) {
//     reversed += str[i];
//   }
//   return reversed;
// }

// __________________________________________________

// ------------------Task - 2----------------------

// void main(List<String> args) {
//   if (args.length != 3) {
//     print("Add three arguments");
//     return;
//   }
//   try {
//     // if i add the int.parse it will get in int part
//     // if add double.parse then it will go into Floating part
//     dynamic a = int.tryParse(args[0]) ?? double.tryParse(args[0]);
//     dynamic b = int.tryParse(args[2]) ?? double.tryParse(args[2]);
//     String c = args[1];
//     dynamic result = calculate(a, b, c);
//     print("Type : ${result.runtimeType}");
//     print("Result: $result");
//   } catch (e) {
//     print("Error: $e");
//   }
// }

// dynamic calculate(dynamic a, dynamic b, String c) {
//   if (a is int && b is int) {
//     switch (c) {
//       case '+':
//         print("Addition of two integers.");
//         return a + b;
//       case '-':
//         return a - b;
//       case '*':
//         return a * b;
//       case '/':
//         if (b == 0) {
//           print("Denominator should not be 0.");
//           return 0;
//         } else {
//           return a / b;
//         }
//       default:
//         print("Invalid input.");
//         return 0;
//     }
//   } else if (a is double || b is double) {
//     switch (c) {
//       case '+':
//         return a + b;
//       case '-':
//         return a - b;
//       case '*':
//         return a * b;
//       case '/':
//         if (b == 0) {
//           print("Denominator should not be 0.");
//           return 0;
//         } else {
//           return a / b;
//         }
//       default:
//         print("Invalid input.");
//         return 0;
//     }
//   } else {
//     print("Invalid input.");
//     return 0;
//   }
// }

// ------------------Task - 3----------------------

// import 'dart:math';

// void main(List<String> arg) {
//   int num = int.parse(arg[0]);
//   print("Digit is = $num");
//   print("${primeno(num) ? "prime" : "not prime"}");
//   print("${perfectroot(num)}");
//   print("${palindrome(num)}");
// }

// palindrome(int num) {
//   String str = num.toString();
//   String rev = str.split("").reversed.join();
//   if (str == rev) {
//     print("It is Palindrome number");
//     return rev;
//   } else {
//     print("Its not palindrome");
//     return str;
//   }
// }

// double perfectroot(int num) {
//   double root = sqrt(num);
//   double product = root * root;
//   if (num == product) {
//     print("its Perfect Squre");
//   } else {
//     print("Not perfect Squre");
//   }
//   return root;
// }

// bool primeno(int num) {
//   if (num <= 1) {
//     return false;
//   }
//   for (int i = 2; i * i <= num; i++) {
//     if (num % i == 0) {
//       return false;
//     }
//   }
//   return true;
// }

// ------------------Task - 4----------------------

// void main(List<String> args) {
//   double a = double.parse(args[0]);
//   print("factorial is = ${fact(a)}");
// }

// double fact(a) {
//   if (a >= 0) {
//     if (a == 0 || a == 1) {
//       return 0;
//     } else {
//       return a * fact(a - 1);
//     }
//   }
//   return 0;
// }

// ------------------Task - 5----------------------

// void main(List<String> args) {
//   // assert(args.length==3,"Enter only 3 string")
//   if (args.length >= 2) {
//     String str1 = args[0];
//     String str2 = args[1];
//     String action = args[2];

//     String rev1 = reverse(str1);
//     String rev2 = reverse(str2);

//     if (action == 'rev') {
//       print("String 1 reverse: $rev1");
//       print("String 2 reverse: $rev2");
//       print('combined = $rev1 $rev2');
//     } else if (action == 'alt') {
//       String altr = alternative(str1);
//       String alt2 = alternative(str2);
//       print("Alternative character = $altr $alt2");
//     }
//   } else {
//     print("Enter only 3 char");
//     print("You entered: ${args.length}");
//   }
// }

// String reverse(String str) {
//   int size = str.length;
//   String reversed = "";
//   for (int i = size - 1; i >= 0; i--) {
//     reversed += str[i];
//   }
//   return reversed;
// }

// String alternative(String str2) {
//   List<String> char = str2.split('');
//   List<String> alter = [];
//   for (int i = 0; i < char.length; i++) {
//     if (i % 2 == 0) {
//       alter.add(char[i]);
//     }
//   }
//   return alter.join();
// }

// ------------------Task - 6----------------------

// void main(List<String> args) {
//   if (args.length != 4) {
//     print("Enter 4 details");
//     return;
//   }
//   try {
//     int a = int.parse(args[0]);
//     double b = double.parse(args[1]);
//     String c = args[2];
//     bool isworking = args[3].toLowerCase() == 'true';

//     List lst = [a, b, c, isworking];
//     print("List: $lst");

//     Map<String, dynamic> map = {
//       'Age': a,
//       'Salary': b,
//       'Name': c,
//       'work': isworking
//     };
//     print("Map: $map");

//     Datattypes add = Datattypes(a, b, c, isworking);
//     add.viewetail();
//   } catch (e) {
//     throw Exception("Check the code of fetching detail");
//   }
// }

// class Datattypes {
//   int num;
//   String str;
//   double f;
//   bool work;

//   Datattypes(this.num, this.f, this.str, this.work);

//   void viewetail() {
//     print("Age: $num");
//     print("Name: $str");
//     print("Salary: $f");
//     print("Working: $work");
//   }
// }

//

// __________________---Special task ---___________

// void main(List<String> args) {
//   String exp = args[0];
//   double result = solve(exp);
//   print("Solution: $result");
// }

// double solve(String exp) {
//   List<String> opr = exp.split(RegExp(r'(\+|\-|\*|\/)'));

//   print("Number are = $opr");

//   List<String> digit = exp.split(RegExp(r'\d+'));

//   print("oprators are =$digit");

//   double result = 0;

//   for (int i = 1; i < opr.length; i++) {
//     double sol = double.parse(opr[i]);
//     String op = digit[i];

//     // print("number =$sol");
//     // print("oprator =$op");

//     switch (op) {
//       case '+':
//         result += sol;
//         break;
//       case '-':
//         result -= sol;
//         break;
//       case '*':
//         result *= sol;
//         break;
//       case '/':
//         if (sol != 0) {
//           result /= sol;
//         } else {
//           throw "niche wala 0 mat rakh";
//         }
//         break;
//       default:
//         throw "expression check kar";
//     }
//   }

//   return result;
// }
