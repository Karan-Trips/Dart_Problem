import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ThirdGridView extends StatefulWidget {
  const ThirdGridView({super.key});

  @override
  State<ThirdGridView> createState() => _ThirdGridViewState();
}

class _ThirdGridViewState extends State<ThirdGridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen "),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(
                  color: Colors.blue[800],
                  child: const Center(
                    child: Center(
                        child: CircleAvatar(
                      child: Text("0"),
                    )),
                  )),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                  color: Colors.blue[800],
                  child: const Center(
                      child: CircleAvatar(
                    child: Text("1"),
                  ))),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                  color: Colors.blue[800],
                  child: const Center(
                      child: CircleAvatar(
                    child: Text("2"),
                  ))),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Container(
                  color: Colors.blue[800],
                  child: const Center(
                      child: CircleAvatar(
                    child: Text("3"),
                  ))),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Container(
                  color: Colors.blue[800],
                  child: const Center(
                      child: CircleAvatar(
                    child: Text("4"),
                  ))),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(
                  color: Colors.blue[800],
                  child: const Center(
                      child: CircleAvatar(
                    child: Text("5"),
                  ))),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                  color: Colors.blue[800],
                  child: const Center(
                      child: CircleAvatar(
                    child: Text("6"),
                  ))),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                  color: Colors.blue[800],
                  child: const Center(
                      child: CircleAvatar(
                    child: Text("7"),
                  ))),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(
                  color: Colors.blue[800],
                  child: const Center(
                      child: CircleAvatar(
                    child: Text("8"),
                  ))),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                  color: Colors.blue[800],
                  child: const Center(
                      child: CircleAvatar(
                    child: Text("9"),
                  ))),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                  color: Colors.blue[800],
                  child: const Center(
                      child: CircleAvatar(
                    child: Text("10"),
                  ))),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Container(
                  color: Colors.blue[800],
                  child: const Center(
                      child: CircleAvatar(
                    child: Text("11"),
                  ))),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Container(
                  color: Colors.blue[800],
                  child: const Center(
                      child: CircleAvatar(
                    child: Text("12"),
                  ))),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(
                  color: Colors.blue[800],
                  child: const Center(
                      child: CircleAvatar(
                    child: Text("13"),
                  ))),
            ),
          ],
        ),
      ),
    );
  }
}
