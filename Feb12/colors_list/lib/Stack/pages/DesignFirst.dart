// ignore_for_file: file_names

import 'package:flutter/material.dart';

class StackFourthPage extends StatelessWidget {
  const StackFourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OP"),
        centerTitle: true,
      ),
      body: Stack(children: [
        Container(
          color: Colors.green,
        ),
        Container(
          height: 300,
          width: 300,
          color: Colors.blue,
        ),
        Container(
          height: 150,
          width: 150,
          color: Colors.red,
        ),
      ]),
    );
  }
}
