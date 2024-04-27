import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SecondGridview extends StatelessWidget {
  const SecondGridview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: List.generate(
          8,
          (index) => staggeredgridTile(index),
        ),
      ),
    );
  }

  Widget staggeredgridTile(int i) {
    final bool even = i.isEven;

    final int cc = even ? 2 : 2;
    final int mc = even ? 2 : 1;

    return StaggeredGridTile.count(
      crossAxisCellCount: cc,
      mainAxisCellCount: mc,
      child: Container(
        color: Colors.green,
        child: Center(
          child: CircleAvatar(
            child: Text("$i"),
          ),
        ),
      ),
    );
  }
}
