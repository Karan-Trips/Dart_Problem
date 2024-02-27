import 'package:colors_list/CustomeAppBar/custom_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomeAppbar extends StatelessWidget {
  const CustomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.navigate_next_outlined),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CustomTabBar()));
              }),
          appBar: AppBar(
            backgroundColor: Colors.black26,
            title: const Text("Profile Page"),
            centerTitle: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            leading: const Icon(
              Icons.menu,
            ),
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 180,
                child: Center(
                  child: Text(
                    'detail Page',
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                height: 50,
                child: const TabBar(
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.directions_bike,
                        color: Colors.white,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.directions_car,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                  Container(
                    color: Colors.red,
                    child: const Center(
                        child: Text(
                      "Bike",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                  Container(
                    color: Colors.red,
                    child: const Center(
                        child: Text(
                      "car",
                      style: TextStyle(color: Colors.white),
                    )),
                    // height: 220,
                  ),
                ]),
              )
            ],
          )),
    );
  }
}
