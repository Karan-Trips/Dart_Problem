// import 'dart:io';

// void main() {
//   List<Student> stlist = [];
//   String result;

//   // List<int> list = [11, 22, 33, 44, 33, 44, 33, 11];
//   // List<String> list2 = ['karan', "karan", 'gg', 'gg', "op"].toSet().toList();
//   // print("Unique List is =$list2");

//   // List<int> uniquelist = list.toSet().toList();
//   // print("$uniquelist list of $list is uniquelist");

//   const int password = 123;
//   while (true) {
//     print("\n---------Log-In -------\n");
//     if (DateTime.now().hour < 12) {
//       result = "Good Morning";
//       print(result);
//     } else {
//       result = "Good Afternoon";
//       print(result);
//     }
//     print("1. User");
//     print("2. Admin");
//     print("3. Exit");

//     stdout.write("U R User/Admin = ");
//     int choice = int.parse(stdin.readLineSync()!);
//     switch (choice) {
//       case 1:
//         stdout.write("Enter your ID: ");
//         int id = int.parse(stdin.readLineSync()!);
//         if (stlist.any((student) => student.id == id)) {
//           view(stlist.where((u) => u.id == id).toList());
//         } else {
//           print("Not present");
//         }
//         break;
//       case 2:
//         stdout.write("Enter your password mam: ");

//         int key = int.parse(stdin.readLineSync()!);
//         if (key == password) {
//           while (true) {
//             print("\n---------Menu -------\n");
//             print("1. Add student");
//             print("2. Update income only principle can update");
//             print("3. View Details");
//             print("4. Compare detil");
//             print("5. Delete by id");
//             print("6. Exit");

//             stdout.write("Enter ur choice: ");
//             String choice = stdin.readLineSync()!;

//             switch (choice) {
//               case '1':
//                 add(stlist);
//                 break;
//               case '2':
//                 if (isprinciple()) {
//                   update(stlist);
//                 } else {
//                   print("U do not have permission");
//                 }
//                 break;
//               case '3':
//                 view(stlist);
//                 break;
//               case '4':
//                 compare(stlist);
//               case '5':
//                 delete(stlist);
//               case '6':
//                 exit(0);
//               default:
//                 print("Invalid choice");
//             }
//             break;
//           }
//         } else {
//           print("Check the key mam!!!!");
//         }
//       case 3:
//         exit(0);
//     }
//   }
// }

// bool isprinciple() {
//   stdout.write("R u principle if yes then type (y)/(n) = ");
//   String choic = stdin.readLineSync()!;
//   return choic == 'y';
// }

// void add(List<Student> stlist) {
//   stdout.write("Enter student ID: ");
//   int id = int.parse(stdin.readLineSync()!);

//   stdout.write("Enter student name: ");
//   String name = stdin.readLineSync()!;

//   stdout.write("Enter student age: ");
//   int age = int.parse(stdin.readLineSync()!);

//   stdout.write("Enter student grade: ");
//   String grade = stdin.readLineSync()!;

//   Student newStudent = Student(id: id, name: name, age: age, grade: grade);
//   stlist.add(newStudent);
//   print("-- !! Details added !!--");
//   // newStudent.view();
// }

// void update(List<Student> stlist) {
//   stdout.write("Enter student id to update: ");
//   int sid = int.parse(stdin.readLineSync()!);

//   int check = stlist.indexWhere((student) => student.id == sid);

//   if (check != -1) {
//     Student updtstudent = stlist[check];
//     updtstudent.view();
//     stdout.write("Enter student agto upgradee: ");
//     int newage = int.parse(stdin.readLineSync()!);
//     stdout.write("Enter student grade to upgarde: ");
//     String newgrade = stdin.readLineSync()!;

//     stdout.write("Enter student income: ");
//     double newincome = double.parse(stdin.readLineSync()!);

//     updtstudent.update(newage, newgrade, newincome);

//     print("Updated ");
//     updtstudent.view();
//   } else {
//     print("id not found.");
//   }
// }

// void compare(List<Student> stlist) {
//   for (int i = 0; i < stlist.length; i++) {
//     for (int j = i + 1; j < stlist.length; j++) {
//       if (isequal(stlist[i], stlist[j])) {
//         print("Both details and same");
//       } else {
//         print("not same ");
//       }
//     }
//   }
// }

// bool isequal(Student s1, Student s2) {
//   return s1.id == s2.id &&
//       s1.name == s2.name &&
//       s1.age == s2.age &&
//       s1.grade == s2.grade;
// }

// void view(List<Student> stlist) {
//   print("\nList of students:");
//   if (stlist.isEmpty) {
//     print("Empty hai.");
//   } else {
//     stlist.forEach((student) {
//       student.view();
//     });
//   }
// }

// void delete(List<Student> stlist) {
//   stdout.write("Enter student id to delete: ");
//   int delid = int.parse(stdin.readLineSync()!);
//   stlist.removeWhere((element) => element.id == delid);
//   print("item Deleted");
// }

// class Student {
//   late int id;
//   late String name;
//   late int age;
//   late String grade;
//   late double _income;

//   Student({
//     required this.id,
//     required this.name,
//     required this.age,
//     required this.grade,
//     double income = 0.0,
//   }) : _income = income;
//   double get income => _income;
//   void view() {
//     print("\n\t----Student Details-----");
//     print("Student id: $id");
//     print("Student name: $name");
//     print("Student age: $age");
//     print("Student grade: $grade");
//     print("Student income: $_income\n");

//     print('--------------------------------');
//   }

//   void update(int nage, String ngrade, double newincome) {
//     age = nage;
//     grade = ngrade;
//     this._income = newincome;
//   }
// }

// -------------------------------------

// 