// import 'dart:io';

// void main() {
//   List<int> lst = [];
//   stdout.write("Enter the no. u want to enter in list=");
//   int add = int.parse(stdin.readLineSync()!);

//   for (int i = 0; i <= add-1; i++) {
//     stdout.write("Enter the no.=");
//     int no = int.parse(stdin.readLineSync()!);

//     lst.add(no);
//   }
//   print("list = $lst");
//   print("Sum of no in ist is =${sum(lst)}");
//   print("product of no in ist is =${product(lst)}");
//   maxmin(lst);

//   lst.sort();
//   print("Sorting in ascending order: $lst");
//   lst.sort((a, b) => b.compareTo(a));
//   print("Sorting in decending order: $lst");

//   List klist = [20, 12, 14, 19];
//   klist.addAll(lst);

//   print("Merge list = $klist");
//   stdout.write("Enter thr no to search = ");
//   int srch = int.parse(stdin.readLineSync()!);
//   // print("Serach is =${lst.contains(srch)}");
//   print("Serach is =${lst.any((i) => i == srch)}");
// }

// int sum(List<int> list) {
//   int sum = 0;
//   for (int i = 0; i < list.length; i++) {
//     sum += list[i];
//   }
//   return sum;
// }

// int product(List<int> list) {
//   int pro = list[0];
//   for (int i = 0; i < list.length; i++) {
//     pro *= list[i];
//   }
//   return pro;
// }

// void maxmin(List<int> list) {
//   int max = list[0];
//   int min = list[0];
//   for (int i = 0; i < list.length; i++) {
//     if (list[i] > max) {
//       max = list[i];
//     } else if (min > list[i]) {
//       min = list[i];
//     }
//   }
//   print("max no is =$max and min is = $min");
// }

// //--------------------------------------------

// import 'dart:io';

// void main() {
//   stdout.write("Enter the string=");
//   String str = stdin.readLineSync()!;
//   count(str);
//   print("Reverse = ${reverse(str)}");
//   print("Palindrome =${palindrome(str)}");
// }

// void count(String str) {
//   int vow = 0;
//   int cons = 0;
//   for (int i = 0; i < str.length; i++) {
//     if (str[i] == 'a' ||
//         str[i] == 'e' ||
//         str[i] == 'i' ||
//         str[i] == 'o' ||
//         str[i] == 'u') {
//       vow++;
//     } else {
//       cons++;
//     }
//   }
//   print("Vowels in string are =$vow");
//   print("Consonant in string are =$cons");
// }

// String reverse(String str) {
//   int size = str.length;

//   String reversed = "";

//   for (int i = size - 1; i >= 0; i--) {
//     reversed += str[i];
//   }
//   return reversed;
// }

// palindrome(String str) {
//   String rev = str.split("").reversed.join();
//   if (str == rev) {
//     print("It is Palindrome String");
//     return rev;
//   } else {
//     print("Its not palindrome");
//   }
// }

// ------------------------------

// import 'dart:io';

// void main() {
//   stdout.write("Enter the marks of Python = ");
//   int m1 = int.parse(stdin.readLineSync()!);
//   stdout.write("Enter the marks of c++ = ");
//   int m2 = int.parse(stdin.readLineSync()!);
//   stdout.write("Enter the marks of Mths = ");
//   int m3 = int.parse(stdin.readLineSync()!);
//   Map<String, int> map = {
//     "Python": m1,
//     "C++": m2,
//     "Maths": m3,
//   };
//   print(map);

//   print(
//       "Total marks = ${map.values.reduce((value, element) => value + element)}");
//   print(
//       "product of marks = ${map.values.reduce((value, element) => value * element)}");
//   print("max = ${map.values.reduce((a, b) => a > b ? a : b)}");
//   print("Min = ${map.values.reduce((a, b) => a < b ? a : b)}");
/// ---- // Merging MAp
  // Map<String, int> map2 = {
  //   "Maths": 45,
  //   "C": 50,
  //   "Dart": 20,
  //   "History": 80,
  // };
  // print(map2);
  // Map<String, int> merge = {...map, ...map2};
  // print(merge);

// ------ //Sort Map
//   var sort = map.entries.toList()..sort(((a, b) => a.value.compareTo(b.value)));
//   Map<String, int> sortedmap = Map.fromEntries(sort);
//   if (sortedmap.values.every((i) => i % 2 == 0)) {
//     print("$sortedmap");
//   } else {
//     print("not found");
//   }

// // -----// Search in map---
//   // stdout.write("Enter the subject to serach = ");
//   // String srch = stdin.readLineSync()!;
//   // if (map.containsKey(srch)) {
//   //   print("$srch marks=${map[srch]}");
//   // } else {
//   //   print("not found");
//   // }
// }
