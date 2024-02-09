class Person {
  String? name;
  int? age;
  String? email;

  void display() {
    print("Name= $name");
    print("email= $email");
    print("age= $age");
  }
}

void main() {
  Person p = Person();
  print("---------Before null safty---------");
  p.display();
  print("-------After null safty-------");
  p.age = 21;
  p.email = "kasdas@agdam.com";
  p.name = "Karan";
  p.display();
}
