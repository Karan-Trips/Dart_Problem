import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggerdGrid extends StatefulWidget {
  const StaggerdGrid({super.key});

  @override
  State<StaggerdGrid> createState() => _StaggerdGridState();
}

class _StaggerdGridState extends State<StaggerdGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Staggerd GridView"),
          centerTitle: true,
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
                  child: const Center(child: Icon(Icons.grid_view_sharp))),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Container(
                  color: Colors.blue,
                  child: const Center(
                      child: Icon(
                    Icons.wifi,
                    color: Colors.white,
                  ))),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Container(
                  color: Colors.amber,
                  child: const Center(
                      child: Icon(
                    Icons.movie_filter_sharp,
                    color: Colors.white,
                  ))),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                  color: Colors.brown,
                  child: const Center(
                      child: Icon(
                    Icons.map,
                    color: Colors.white,
                  ))),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(
                  color: Colors.red[300],
                  child: const Center(
                      child: Icon(
                    Icons.send,
                    color: Colors.white,
                  ))),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Container(
                  color: Colors.blue[900],
                  child: const Center(
                      child: Icon(
                    Icons.bedroom_child,
                    color: Colors.white,
                  ))),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                  color: Colors.red,
                  child: const Center(
                      child: Icon(
                    Icons.bluetooth,
                    color: Colors.white,
                  ))),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 1,
              child: Container(
                  color: Colors.redAccent,
                  child: const Center(
                      child: Icon(
                    Icons.battery_0_bar,
                    color: Colors.white,
                  ))),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                  color: Colors.purple,
                  child: const Center(
                      child: Icon(
                    Icons.monitor,
                    color: Colors.white,
                  ))),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 1,
              child: Container(
                  color: Colors.blue[400],
                  child: const Center(
                      child: Icon(
                    Icons.radio,
                    color: Colors.white,
                  ))),
            ),
          ],
        ));
  }
}
