// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class StackSecondPage extends StatelessWidget {
  String networkimage =
      'https://media.wired.com/photos/64daad6b4a854832b16fd3bc/master/pass/How-to-Choose-a-Laptop-August-2023-Gear.jpg';
  StackSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Usage'),
        centerTitle: true,
      ),
      body: Stack(children: [
        Container(
          color: Colors.white,
          height: 120,
          width: double.infinity,
        ),
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(
            networkimage,
          ),
        ),
        const Positioned(
            top: 70,
            left: 70,
            // bottom: 90,
            child: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 15,
              child: Text(
                "1",
                style: TextStyle(color: Colors.white),
              ),
            )),
      ]),
    );
  }
}
