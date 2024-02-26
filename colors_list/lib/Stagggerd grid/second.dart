import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SecondGridview extends StatefulWidget {
  const SecondGridview({super.key});

  @override
  State<SecondGridview> createState() => _SecondGridviewState();
}

class _SecondGridviewState extends State<SecondGridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen "),
      ),
      body: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Container(
                color: Colors.green,
                child: Center(
                  child: Container(
                      color: Colors.green,
                      child: const Center(
                          child: CircleAvatar(
                        child: Text("0"),
                      ))),
                )),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Container(
                color: Colors.green,
                child: const Center(
                    child: CircleAvatar(
                  child: Text("1"),
                ))),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Container(
                color: Colors.green,
                child: const Center(
                    child: CircleAvatar(
                  child: Text("2"),
                ))),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Container(
                color: Colors.green,
                child: const Center(
                    child: CircleAvatar(
                  child: Text("3"),
                ))),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Container(
                color: Colors.green,
                child: const Center(
                    child: CircleAvatar(
                  child: Text("4"),
                ))),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Container(
                color: Colors.green,
                child: const Center(
                    child: CircleAvatar(
                  child: Text("5"),
                ))),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Container(
                color: Colors.green,
                child: const Center(
                    child: CircleAvatar(
                  child: Text("6"),
                ))),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Container(
                color: Colors.green,
                child: const Center(
                    child: CircleAvatar(
                  child: Text("7"),
                ))),
          ),
        ],
      ),
    );
  }
}
