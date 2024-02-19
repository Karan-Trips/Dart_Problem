// ignore_for_file: prefer_const_constructors

import 'package:colors_list/Pages/RowFlexPage/Nullpage.dart';
import 'package:colors_list/Pages/RowFlexPage/Rowflexfirst.dart';
import 'package:colors_list/Pages/RowFlexPage/rowflex_second.dart';
import 'package:colors_list/Pages/RowFlexPage/rowflex_third.dart';
import 'package:flutter/material.dart';

class RowColumFlex extends StatefulWidget {
  const RowColumFlex({super.key});

  @override
  State<RowColumFlex> createState() => _RowColumFlexState();
}

class _RowColumFlexState extends State<RowColumFlex> {
  List<Widget> pages = [
    RowColumFlexFirst(),
    RowColumFlexSecond(),
    RowColumFlexThird(),
    NullPage(),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Heart",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: "Home",
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined),
              label: "Shop",
              backgroundColor: Colors.purple[100]),
          BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken),
              label: "Shop",
              backgroundColor: Colors.white),
        ],
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.black,
        elevation: 20,
        selectedFontSize: 15,
        showUnselectedLabels: true,
        selectedItemColor: Colors.red,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
      ),
      body: Center(
        child: pages.elementAt(selectedIndex),
      ),
    );
  }
}
