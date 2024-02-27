import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.pink,
            title: const Text(
              "TabBar",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 5),
                height: 55,
                child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.pink,
                  indicatorColor: Colors.transparent,
                  indicator: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(width: 2, color: Colors.pink)),
                  tabs: [
                    Tab(
                      child: Container(
                          width: 120,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.pink),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                            child: Text(
                              "Chats",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )),
                    ),
                    Tab(
                      child: Container(
                          width: 120,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.pink),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                            child: Text(
                              "Status",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )),
                    ),
                    Tab(
                      child: Container(
                          width: 120,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.pink),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                            child: Text(
                              "Call",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: TabBarView(children: [
                const Center(child: Text("Hi")),
                const Center(child: Text("Chat")),
                ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Call List $index'),
                      subtitle: const Text(
                        "Tab bar ui",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      trailing: const Icon(Icons.arrow_circle_right),
                    );
                  },
                )
              ])),
            ],
          )),
    );
  }
}
