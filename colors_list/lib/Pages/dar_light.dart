import 'package:colors_list/Pages/api_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DarkLight extends StatefulWidget {
  const DarkLight({Key? key}) : super(key: key);

  @override
  State<DarkLight> createState() => _DarkLightState();
}

class _DarkLightState extends State<DarkLight> {
  bool _isDarkMode = false;
  int change = 0;
  int no = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      darkTheme: ThemeData.dark(),
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        bottomNavigationBar: GNav(
            backgroundColor: Colors.black,
            onTabChange: (value) {
              // ColoumnColors();
            },
            rippleColor: Colors.grey,
            hoverColor: Colors.blueGrey,
            haptic: true,
            tabBorderRadius: 10,
            tabActiveBorder: Border.all(color: Colors.black, width: 1),
            tabBorder: Border.all(color: Colors.grey, width: 1),
            tabShadow: [BoxShadow(color: Colors.red.withOpacity(0.5))],
            curve: Curves.easeOutExpo,
            duration: const Duration(milliseconds: 9),
            gap: 8,
            color: Colors.white,
            activeColor: Colors.white,
            iconSize: 24,
            tabBackgroundColor: Colors.purple.withOpacity(0.1),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.heart_broken,
                text: 'Likes',
              ),
              GButton(
                icon: Icons.abc,
                text: 'Search',
              ),
              GButton(
                icon: FontAwesomeIcons.wifi,
                text: 'Profile',
              )
            ]),
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back_outlined),
          actions: const [
            Icon(
              Icons.account_circle_sharp,
              size: 35,
            )
          ],
          backgroundColor: _isDarkMode ? Colors.black : Colors.orange,
          title: Text(
            'Change Theme',
            style: TextStyle(color: _isDarkMode ? Colors.white : Colors.black),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: _isDarkMode ? Colors.white : Colors.black,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.dark_mode),
                      onPressed: () {
                        setState(() {
                          _isDarkMode = true;
                        });
                      },
                      color: _isDarkMode ? Colors.black : Colors.white,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: _isDarkMode ? Colors.white : Colors.black,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.light_mode),
                      onPressed: () {
                        setState(() {
                          _isDarkMode = false;
                        });
                      },
                      color: _isDarkMode ? Colors.black : Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 90,
              ),
              Text(
                "Nice...",
                style: TextStyle(
                    color: _isDarkMode ? Colors.white : Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 35,
              ),
              ElevatedButton(
                onPressed: () async {
                  Fluttertoast.showToast(
                      msg: "Open API ",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 2,
                      backgroundColor: Colors.green,
                      textColor: Colors.white,
                      fontSize: 16.0);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const ApiPage())));

                  // final pdfFile = await PdfInvoiceApi.generate();

                  // opening the pdf file
                  // FileHandleApi.openFile(pdfFile);
                  // print("pdf ....");
                },
                child: const Text(
                  "API Page",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.red,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () {
                        setState(() {
                          if (no <= 0) {
                            debugPrint("No cannot be negative");
                          } else {
                            no--;
                          }
                        });
                      },
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: SizedBox(
                        child: Text(
                      "$no",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.red,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          no++;
                        });
                      },
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.red,
                ),
                child: IconButton(
                  icon: const Icon(Icons.restore_outlined),
                  onPressed: () {
                    setState(() {
                      no = 0;
                    });
                  },
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              no += 10;
            });
          },
          child: const Text("ADD 10"),
        ),
      ),
    );
  }
}
