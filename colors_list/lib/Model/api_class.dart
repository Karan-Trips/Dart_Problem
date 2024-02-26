class User {
  final String gender;
  final UserName name;
  final String email;
  final String phone;
  final String cell;
  final String pic;
  final String title;

  User({
    required this.gender,
    required this.name,
    required this.email,
    required this.phone,
    required this.cell,
    required this.pic,
    required this.title,
  });
}

class UserName {
  final String title;
  final String first;
  final String last;

  UserName({required this.title, required this.first, required this.last});
}
