import 'package:colors_list/GridViewpage/Pages/Gridandlistpage/catagories.dart';
import 'package:flutter/material.dart';

class Menupage extends StatefulWidget {
  const Menupage({super.key});

  @override
  State<Menupage> createState() => _MenupageState();
}

class _MenupageState extends State<Menupage> {
  List<String> imageurl = [
    'assets/rice.jpg',
    'assets/ta.jpg',
    'assets/wheat.jpg',
    'assets/juice.jpg',
    'assets/greentea.jpg',
    'assets/cake.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[200],
        appBar: AppBar(
          backgroundColor: Colors.brown[200],
          title: const Text("Restaurant Menu"),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Catagory(imageurl: imageurl),
                  Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(width: 3),
                        image: const DecorationImage(
                            image: AssetImage("assets/rice.jpg"),
                            fit: BoxFit.fill)),
                    height: 250,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, bottom: 10),

                    // width: 200,
                    child: const Text(
                        "Rice asda sd asd asd as das das d  asdasdjuahsgdjags asdushdghaisu Ricedjuahsgdjags dhas"),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(width: 3),
                        borderRadius: BorderRadius.circular(40),
                        image: const DecorationImage(
                            image: AssetImage("assets/juice.jpg"),
                            fit: BoxFit.fill)),
                    height: 250,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, bottom: 10),

                    // width: 200,
                    child: const Text(
                        "Wheat asda sd asd asd as das das d  asdasdjuahsgdjags asdushdghaisu Wheat djuahsgdjags dhas"),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
