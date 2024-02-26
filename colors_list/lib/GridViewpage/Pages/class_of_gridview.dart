import 'package:flutter/material.dart';

class CustomItemList {
  late List<Color> listColors;
  late List<IconData> listIcons;
  late List<String> listName;

  CustomItemList() {
    listColors = [
      Colors.green[100]!,
      Colors.pink[200]!,
      Colors.purple[200]!,
      Colors.pink[400]!,
      Colors.blueGrey,
      Colors.deepPurple,
      Colors.lightGreen,
      Colors.brown,
      Colors.blueGrey[300]!,
      Colors.green[300]!,
      Colors.pink[200]!,
      Colors.purple[300]!,
      Colors.pink[400]!,
      Colors.blueGrey,
      Colors.deepPurple,
      Colors.lightGreen,
    ];

    listIcons = [
      Icons.home,
      Icons.email,
      Icons.wallet,
      Icons.backup,
      Icons.car_rental,
      Icons.phone,
      Icons.camera,
      Icons.print,
      Icons.notes_outlined,
      Icons.alarm,
      Icons.business,
      Icons.portrait,
      Icons.person,
      Icons.bike_scooter,
      Icons.book,
      Icons.music_note,
    ];

    listName = [
      "Home",
      "Email",
      "Wallet",
      "Backup",
      "Car Rental",
      "Phone",
      "Camera",
      "Print",
      "Notes",
      "Alarm",
      "Business",
      "Portrait",
      "Person",
      "Bike Scooter",
      "Book",
      "Music Note",
    ];
  }
}
