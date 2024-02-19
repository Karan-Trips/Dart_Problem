import 'package:flutter/material.dart';

class StackThirdPage extends StatelessWidget {
  const StackThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Example"),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              color: Colors.red,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 560,
              width: 260,
              color: Colors.blue,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 460,
              width: 180,
              color: Colors.yellow,
            ),
          ),
          Positioned(
            right: 0,
            top: 100,
            child: Container(
              height: 6,
              width: 50,
              color: Colors.black,
            ),
          ),
          Positioned(
            right: 0,
            top: 200,
            child: Container(
              height: 6,
              width: 100,
              color: Colors.black,
            ),
          ),
          Positioned(
            right: 0,
            top: 300,
            child: Container(
              height: 6,
              width: 200,
              color: Colors.black,
            ),
          ),
        ]),
      ),
    );
  }
}
