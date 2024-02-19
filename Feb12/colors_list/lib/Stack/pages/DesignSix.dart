// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DesignSix extends StatelessWidget {
  const DesignSix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'Stack Widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(children: [
        Align(
          alignment: Alignment.center,
          child: Positioned(
              child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              width: double.infinity,
              height: 300,
              color: Colors.red,
            ),
          )),
        ),
        Positioned(
            top: 220,
            left: 15,
            child: Container(
              height: 250,
              width: 270,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(161, 0, 0, 0),
                    blurRadius: 20.0,
                    offset: Offset(
                      18,
                      18,
                    ),
                  ),
                ],
                color: Colors.green,
              ),
            )),
        Positioned(
            top: 180,
            right: 80,
            child: Container(
              height: 200,
              width: 250,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(168, 0, 0, 0),
                    blurRadius: 25.0,
                    offset: Offset(
                      20,
                      20,
                    ),
                  ),
                ],
                color: Colors.blue,
              ),
            ))
      ]),
    );
  }
}
