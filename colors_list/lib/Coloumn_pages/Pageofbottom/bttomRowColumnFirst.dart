import 'package:flutter/material.dart';

class BorromRowColumnFirst extends StatelessWidget {
  const BorromRowColumnFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Container(
            height: 200,
            color: Colors.red,
            child: Center(child: Text('red')),
          )),
          Expanded(
              child: Container(
            height: 200,
            color: Colors.yellow,
            child: Center(child: Text('yellow')),
          )),
          Expanded(
              child: Container(
            height: 200,
            color: Colors.blue,
            child: Center(child: Text('blue')),
          )),
          Expanded(
              child: Container(
            height: 200,
            color: Colors.green,
            child: Center(child: Text('green')),
          ))
        ],
      ),
    );
  }
}
