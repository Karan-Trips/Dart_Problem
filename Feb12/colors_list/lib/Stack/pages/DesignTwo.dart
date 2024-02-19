import 'package:flutter/material.dart';

class StacksixPage extends StatelessWidget {
  const StacksixPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          "Stack Widget",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(children: [
        Positioned(
            top: 30,
            left: 30,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.green,
            )),
        Positioned(
            top: 60,
            left: 60,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.red,
            )),
        Positioned(
            top: 90,
            left: 90,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.purple,
            )),
      ]),
    );
  }
}
