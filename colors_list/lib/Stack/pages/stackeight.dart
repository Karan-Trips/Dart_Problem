// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StackSeven extends StatelessWidget {
  const StackSeven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://assets.vogue.in/photos/5ce43d58f55c27a7f4a28dce/2:3/w_2560%2Cc_limit/London-City-Travel-Guide-Vogue-India.jpg'),
                  fit: BoxFit.cover)),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 30,
            ),
            child: Container(
              
              // height: 260,
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(50))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const <Widget>[
                    Text(
                      "New York",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "New York City comprises 5 boroughs sitting where the Hudson River meets the Atlantic Ocean. At its core is Manhattan, a densely populated borough that’s among the world’s major commercial, financial and cultural centers. Its iconic sites include skyscrapers such as the Empire State Building and sprawling Central Park.",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
