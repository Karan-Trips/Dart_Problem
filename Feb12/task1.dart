import 'dart:io';

class Student {
  int id;
  String fname;
  String lname;
  String email;
  double m;
  double sc;
  double en;
  bool isWorkingFromHome;

  Student(this.id, this.fname, this.lname, this.email, this.m, this.sc, this.en,
      this.isWorkingFromHome);

  String calculatePercentage() {
    double per = m + sc + en;
    return (per / 3).toStringAsFixed(2);
  }

  String workingstatus() {
    if (isWorkingFromHome == true) {
      return "Home";
    } else {
      return "Office";
    }
  }

  void display() {
    print(
        "ID: $id, \nFull Name: $fname $lname,\nEmail: $email ,\nWorking From = ${workingstatus()}");
  }
}

void main() {
  List<Student> slist = [];

  while (true) {
    print("\n\n\t\t--------------MENU-----------\n");
    print("\t\t1.Add student Detail");
    print("\t\t2.Student student Detail");
    print("\t\t3.Search Student");
    print("\t\t4.Exit");
    print("\t\t5.delete");
    print("\t\tEnter ur choice\n");
    int ch = int.parse(stdin.readLineSync()!);

    void adddeatil() {
      print("------------------");
      int sno = int.parse(prompt("Enter the no of students to enter = "));
      print("------------------");
      for (int i = 1; i <= sno; i++) {
        print("Enter details for student $i:");
        int id = int.tryParse(prompt("Enter the student id = ")) ?? 0;
        String fname = prompt("Enter the student first name = ");
        String lname = prompt("Enter the student last name = ");
        String email = prompt("Enter the student email = ");
        double m = double.tryParse(prompt("Enter the marks of Maths = ")) ?? 0;
        double sc =
            double.tryParse(prompt("Enter the marks of Science = ")) ?? 0;
        double en =
            double.tryParse(prompt("Enter the marks of English = ")) ?? 0;
        String staus = prompt("Enter ur Status (Home(h) / Office(o))= ");
        bool status() {
          if (staus == "h" || staus == "H") {
            return true;
          } else if (staus == "o" || staus == "O") {
            return false;
          } else {
            print("Enter the correct status");
          }
          return false;
        }

        Student s = Student(id, fname, lname, email, m, sc, en, status());
        slist.add(s);
      }
    }

    void displaydetail() {
      print("\nAll Student Records:");
      for (Student s in slist) {
        s.display();
      }
    }

    void search() {
      int sid = int.parse(prompt("\nEnter the ID to search = "));
      Student search = slist.firstWhere((student) => student.id == sid);

      print("\nStudent Found:");
      search.display();
      print("Percentage: ${search.calculatePercentage()}%");
    }

    void deleteData(List<Student> slist, int did) {
      Student studentToDelete =
          slist.firstWhere((element) => element.id == did);
      slist.remove(studentToDelete);
      print("!!! -$did- deleted hogaya !!");
    }

    switch (ch) {
      case 1:
        adddeatil();
        break;
      case 2:
        displaydetail();
        break;
      case 3:
        search();
        break;
      case 4:
        exit(0);
      case 5:
        int did = int.parse(prompt("Enter the id to delete = "));
        deleteData(slist, did);
      default:
        print("!!! Enter the correct choice !!!");
    }
  }
}

String prompt(String promptMessage) {
  stdout.write(promptMessage);
  return stdin.readLineSync()!;
}
