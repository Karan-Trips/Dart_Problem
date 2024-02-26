// ignore_for_file: prefer_const_constructors

import 'package:colors_list/Coloumn_pages/Pageofbottom/bottomfive.dart';
import 'package:colors_list/Coloumn_pages/Pageofbottom/bottomfour.dart';
import 'package:colors_list/Coloumn_pages/Pageofbottom/bottomsecond.dart';
import 'package:colors_list/Coloumn_pages/Pageofbottom/bttomRowColumnFirst.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomRowColum extends StatefulWidget {
  const BottomRowColum({super.key});

  @override
  State<BottomRowColum> createState() => _BottomRowColumState();
}

class _BottomRowColumState extends State<BottomRowColum> {
  final controller = PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreen() {
    return [
      BorromRowColumnFirst(),
      BottomRowColumSecond(),
      Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
      ),
      BottomRowColumFour(),
      BottomRowColumFive(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItem() {
    return [
      PersistentBottomNavBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.blue[900],
            size: 30,
          ),
          inactiveIcon: Icon(
            Icons.home_filled,
            color: Colors.grey,
            size: 30,
          )),
      PersistentBottomNavBarItem(
          icon: Icon(
            Icons.arrow_upward,
            color: Colors.blue[900],
            size: 30,
          ),
          inactiveIcon: Icon(
            Icons.arrow_upward,
            color: Colors.grey,
            size: 30,
          )),
      PersistentBottomNavBarItem(
          icon: Icon(
            Icons.add,
            color: Colors.red[900],
            size: 30,
          ),
          inactiveIcon: Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          )),
      PersistentBottomNavBarItem(
          icon: Icon(
            Icons.arrow_downward,
            color: Colors.blue[900],
            size: 30,
          ),
          inactiveIcon: Icon(
            Icons.arrow_downward,
            color: Colors.grey,
            size: 30,
          )),
      PersistentBottomNavBarItem(
          icon: Icon(
            Icons.settings,
            color: Colors.blue[900],
            size: 30,
          ),
          inactiveIcon: Icon(
            Icons.settings,
            color: Colors.grey,
            size: 30,
          )),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreen(),
      items: _navBarItem(),
      backgroundColor: Color.fromARGB(255, 245, 245, 245),
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(1),
      ),
      navBarStyle: NavBarStyle.style15,
    );
  }
}
