import 'package:colors_list/Pdf_file/pdf_handling.dart';
import 'package:colors_list/Pdf_file/pdf_invice.dart';
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      darkTheme: ThemeData.dark(),
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        bottomNavigationBar: GNav(
            backgroundColor: Colors.black,
            onTabChange: (value) {
              switch (value) {
                case 0:
                  debugPrint("0");
                  break;
                case 1:
                  debugPrint("1");
                  break;
                case 2:
                  debugPrint("2");
                  break;
                case 3:
                  debugPrint("3");
                  break;
                default:
              }
            },
            rippleColor: Colors.grey,
            hoverColor: Colors.blueGrey,
            haptic: true,
            tabBorderRadius: 10,
            tabActiveBorder: Border.all(color: Colors.black, width: 1),
            tabBorder: Border.all(color: Colors.grey, width: 1),
            tabShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)
            ],
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
                icon: FontAwesomeIcons.magnifyingGlass,
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
              SizedBox(
                child: ElevatedButton(
                  onPressed: () async {
                    Fluttertoast.showToast(
                        msg: "Saved",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);

                    // final pdfFile = await PdfInvoiceApi.generate();

                    // opening the pdf file
                    // FileHandleApi.openFile(pdfFile);
                    // print("pdf ....");
                  },
                  child: Text("PDF"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
