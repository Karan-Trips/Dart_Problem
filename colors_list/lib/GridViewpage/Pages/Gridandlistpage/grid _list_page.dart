// ignore_for_file: must_be_immutable

import 'package:colors_list/GridViewpage/Pages/Gridandlistpage/class_of_listgrid.dart';
import 'package:colors_list/GridViewpage/Pages/Gridandlistpage/menu_page.dart';
import 'package:flutter/material.dart';

class GridandListPage extends StatelessWidget {
  ListAndGridView lg = ListAndGridView();
  GridandListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("List And Grid View"),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "GridView",
              ),
              Tab(
                text: "ListView",
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                    color: Colors.white70,
                    elevation: 8,
                    child: Column(children: <Widget>[
                      Text(
                        "${lg.title} ${index + 1}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(lg.subtitle),
                    ]));
              }),
          ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.white70,
                  elevation: 8,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blue,
                      child: Center(
                        child: Text(
                          "${index + 1}",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    title: Text("${lg.title} ${index + 1}"),
                    subtitle: Text(lg.subtitle),
                  ),
                );
              },
              itemCount: 20),
          
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Menupage()));
          },
          child: Icon(Icons.arrow_circle_right_outlined),
        ),
      ),
    );
  }
}
