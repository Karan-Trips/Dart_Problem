import 'dart:io';

void main() {
  // List<dynamic> str = [];
  List<int> lst = [];
  // print("Ente the list =");
  // for (int i = 0; i < 5; i++) {
  //   dynamic n = stdin.readLineSync();
  //   str.add(n);
  // }
  print("Ente the list 2 = ");
  for (int i = 0; i < 5; i++) {
    int n1 = int.parse(stdin.readLineSync()!);
    lst.add(n1);
  }

  // print(lst.reduce((value, element) => value + element));
  // print(lst.reversed);
  // print(lst.sublist(3));
  // str.shuffle();
  // print(lst);
  // var key = str.asMap();
  // print(key.keys.toList());
  // print(str.whereType<int>());
  // print(lst.getRange(1, 6));
  // lst.replaceRange(1, 3, [50, 50]);
  // print(lst);
  // print(lst.firstWhere((element) => element > 10, orElse: () => 0));
  // print(lst.singleWhere((element) => element < 105, orElse: () => 0));
  // int num = lst.fold(100, (previousValue, element) => previousValue + element);
  // print(num);
  // print(lst.followedBy([50, 23, 45]));
  // print(lst.any((element) => element == 132));
  // print(lst.every((element) => element > 0));
  // print(lst.take(7));
  // print(lst.skip(4));
}
