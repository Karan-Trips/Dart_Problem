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
      body: ListView(
        children: [
          StaggeredGrid.count(
            crossAxisCount: 4,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            children: [
              staggeredGridtile(0, 2, 2),
              staggeredGridtile(1, 1, 1),
              staggeredGridtile(2, 1, 1),
              staggeredGridtile(3, 2, 1),
              staggeredGridtile(4, 2, 1),
              staggeredGridtile(5, 2, 2),
              staggeredGridtile(6, 1, 1),
              staggeredGridtile(7, 1, 1),
            ],
          ),
        ],
      ),
    );
  }

  Widget staggeredGridtile(int index, int cc, int mc) {
    return StaggeredGridTile.count(
      crossAxisCellCount: cc,
      mainAxisCellCount: mc,
      child: Container(
          color: Colors.blue[800],
          child: const Center(
            child: Center(
                child: CircleAvatar(
              child: Text("0"),
            )),
          )),
    );
  }
}
