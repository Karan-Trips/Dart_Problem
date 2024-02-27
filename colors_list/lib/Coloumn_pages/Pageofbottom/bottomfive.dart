import 'package:flutter/material.dart';

class BottomRowColumFive extends StatelessWidget {
  const BottomRowColumFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Flexible(
              child: Center(
            child: Text('Colors'),
          )),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 120,
                    color: Colors.orange,
                    // child: Center(child: Text('red')),
                  )),
                ],
              ),
              const CircleAvatar(
                backgroundColor: Colors.purpleAccent,
                radius: 50,
                child: Text("|\n|\n|\n|"),
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 120,
                    color: Colors.green,
                    // child: Center(child: Text('green')),
                  ))
                ],
              ),
            ],
          ),
          const Flexible(
              child: Center(
            child: Text('What is your favorite Color?'),
          )),
        ],
      ),
    );
  }
}
