// .------------------------Task 1---------
// -----------------Encapsulation--------------

// void main() {
//   Shape sp = Shape();
//   sp.areas();
//   Circle circle = Circle();
//   circle.areas();
//   Rectangle req = Rectangle();
//   req.areas();
// }

// class Shape {
//   String? _colors;
//   double? _areas;
//   static double pi = 3.14;
//   String get col => _colors ?? "null by default";
//   double get area => _areas ?? 0;
//   void areas() {

//     print('area = $area \n color is =$col');

//   }
// }

// class Circle extends Shape {
//   double r = 5.5;
//   void areas() {
//     _colors = "red";
//     _areas = Shape.pi * r * r;
//     super.areas();
//   }
// }

// class Rectangle extends Shape {
//   double l = 10;
//   double b = 12;
//   void areas() {
//     _colors = "Green";
//     _areas = l * b;
//     super.areas();
//   }
// }

// -------------------------------------------
// .------------------------Task 2---------

// void main() {
//   Cars cars = Cars();
//   cars.model = 'Formula 1';
//   cars.year = 2017;
//   cars.gearsystem;

//   print(
//       "cars model year ${cars.model} and model is ${cars.model} , its ${cars.gearsystem}");
//   cars.start();
// }

// abstract class Vehicle {
//   String? model;
//   int? year;
//   void start() {
//     print("Engine on lets go!!!");
//   }
// }

// class Bikes extends Vehicle {}

// class Cars extends Vehicle {
//   String gearsystem = "Manual";
// }

// --------------------------------------------//
// .------------------------Task 3---------

// void main() {

//   Dog dog = Dog();
//   dog.makesound();
//   Cat cat = Cat();
//   cat.makesound();

// }

// abstract class Animal {
//   void makesound();
// }

// class Dog extends Animal {
//   @override
//   void makesound() {
//     print("bhau");
//   }
// }

// class Cat extends Animal {
//   @override
//   void makesound() {
//     print('meowww');
//   }
// }

// // =------------------------------//
// void main() {
//   SavingAccount s = SavingAccount();
//   s.display();
//   s.deposit(120);
//   s.withdraw(140);
// }

// class BankAccount {
//   double _balance = 0;

//   double get balance => _balance;

//   void withdraw(double amount) {
//     if (amount <= _balance) {
//       _balance -= amount;
//       print("Withdrawn amount = $amount");
//       print("Remaining balance = $_balance\n");
//     } else {
//       print("Insufficient funds for withdrawal");
//     }
//   }

//   void deposit(double amount) {
//     _balance += amount;
//     print("Current balance = $_balance\n");
//   }
// }

// class SavingAccount extends BankAccount {
//   void display() {
//     print("This is a child class");
//   }
// }

// -------------------------//---------------------
// .------------------------Task 4-----------------(Using Implements)

// void main() {
//   Guitar guitar = Guitar();                                         
//   guitar.play();                         
// }

// class Playable {
//   void play() {}
//   void dance() {}
                                                                                 
// }

// class Guitar implements Playable {
//   void play() {
//     print("Guitar is playing right now");
//   }           
                   
//   @override                 
//   void dance() {                             
//     // TODO: implement dance
//   }

  
// }


