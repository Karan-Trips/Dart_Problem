import 'package:flutter/material.dart';

class BottomRowColumSecond extends StatelessWidget {
  const BottomRowColumSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            width: 200,
            color: Colors.red,
            child: Center(child: Text('red')),
          )),
          Expanded(
              child: Container(
            width: 200,
            color: Colors.yellow,
            child: Center(child: Text('yellow')),
          )),
          Expanded(
              child: Container(
            width: 200,
            color: Colors.blue,
            child: Center(child: Text('blue')),
          )),
          Expanded(
              child: Container(
            width: 200,
            color: Colors.green,
            child: Center(child: Text('green')),
          ))
        ],
      ),
    );
  }
}
