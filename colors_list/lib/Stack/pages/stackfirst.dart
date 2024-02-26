import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Usage'),
        centerTitle: true,
      ),
      body: Stack(children: [
        Container(width: 200, height: 200, color: Colors.red),
        Positioned(
            child: Container(
          height: 150,
          width: 150,
          color: Colors.blue,
        )),
        Positioned(
            child: Container(
          height: 100,
          width: 100,
          color: Colors.green,
        )),
      ]),
    );
  }
}
