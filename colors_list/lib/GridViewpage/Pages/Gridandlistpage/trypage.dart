import 'package:flutter/material.dart';

class Trypage extends StatelessWidget {
  const Trypage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(image: AssetImage('assets/rice.jpg'))),
          )
        ],
      ),
    );
  }
}
