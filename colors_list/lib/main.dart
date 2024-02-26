import 'package:colors_list/Coloumn_pages/coloumn_pages.dart';
import 'package:colors_list/CustomeAppBar/custome_appbar.dart';
import 'package:colors_list/DropDownpage/dropdown_page.dart';
import 'package:colors_list/GridViewpage/gridView_main.dart';
import 'package:colors_list/Pages/Buttons/custom_buttom.dart';
import 'package:colors_list/Pages/task_4.dart';
import 'package:colors_list/PlayStoreDesign/play_store.dart';

import 'package:colors_list/appbar/appbar_1.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'GridViewpage/Pages/Gridandlistpage/grid _list_page.dart';
import 'Pages/Buttons/list_tile.dart';
import 'Stagggerd grid/second.dart';
import 'Stagggerd grid/third.dart';

// import 'Pages/api_page.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    debugShowCheckedModeBanner: false,
    // home: StaggerdGrid(),
    // home: SecondGridview(),
    // home: const ThirdGridView(),
    home: CustomeAppbar(),
  ));
}

class MainScreenTask extends StatelessWidget {
  const MainScreenTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TASK"),
        actions: [
          PopupMenuButton(
              itemBuilder: (context) => [
                    const PopupMenuItem(
                      child: Text(
                        "Mark as read",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const PopupMenuItem(
                      child: Text(
                        "Mute Notification",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const PopupMenuItem(
                      child: Text(
                        "Settings",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
              offset: const Offset(0, 50),
              color: Colors.white,
              elevation: 5),
        ],
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListTilePage()));
                },
                child: const Text("Ink WEll (Task 1)")),
            const Gap(color: Colors.redAccent, 15),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DropdownTask()));
                },
                child: const Text("DropDown -Task 2")),
            const Gap(color: Colors.redAccent, 15),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomRowColum()));
                },
                child: const Text("BottomNavi -Task 3")),
            const Gap(color: Colors.redAccent, 15),
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios_outlined),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MAinAPPBRA()));
              },
            ),
            const Gap(color: Colors.redAccent, 15),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RowColumFlex()));
                },
                child: const Text("Task 5 and 6 (Outlined button)")),
            const Gap(5),
            InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GridMainPage())),
              child: Container(
                width: 250,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.green],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "GridView Button (Gradient)",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            const Gap(10),
            InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GridandListPage())),
              child: Container(
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.red,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "Grid and ListView",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CustomeButtons())),
              child: Container(
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.red,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "Custome Buttons",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PlayStoreDesign()));
                },
                child: const Text("Play Store"))
          ],
        ),
      ),
    );
  }
}
