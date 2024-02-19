import 'package:colors_list/Coloumn_pages/coloumn_pages.dart';
import 'package:colors_list/DropDownpage/dropdown_page.dart';
import 'package:colors_list/Pages/dar_light.dart';
import 'package:colors_list/Pages/task_4.dart';
import 'package:colors_list/Stack/stack_mainpage.dart';
import 'package:colors_list/Stack/pages/stackfirst.dart';
import 'package:colors_list/appbar/appbar_1.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'Pages/Buttons/list_tile.dart';

// import 'Pages/api_page.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    debugShowCheckedModeBanner: false,
    home: const MainScreenTask(),
  ));
}

class MainScreenTask extends StatelessWidget {
  const MainScreenTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TASK"),
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
            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StackMainPage()));
                },
                child: const Text("Stack Page")),
          ],
        ),
      ),
    );
  }
}
