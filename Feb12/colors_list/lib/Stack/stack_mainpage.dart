import 'package:colors_list/Stack/pages/DesignEight.dart';
import 'package:colors_list/Stack/pages/DesignFIve.dart';
import 'package:colors_list/Stack/pages/DesignFirst.dart';
import 'package:colors_list/Stack/pages/DesignSix.dart';
import 'package:colors_list/Stack/pages/DesignTwo.dart';
import 'package:colors_list/Stack/pages/Stacksecondpage.dart';
import 'package:colors_list/Stack/pages/stackfirst.dart';
import 'package:colors_list/Stack/pages/stacksecond.dart';
import 'package:flutter/material.dart';

class StackMainPage extends StatelessWidget {
  const StackMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.red,
            Color.fromARGB(255, 39, 154, 172),
            Color.fromARGB(255, 210, 121, 121)
          ],
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shadowColor: Colors.red,
                      foregroundColor: Colors.red),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const StackPage()));
                  },
                  child: const Text("First")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 20,
                      shadowColor: Colors.red,
                      foregroundColor: Colors.red),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => StackSecondPage()));
                  },
                  child: const Text("Second")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    shadowColor: Colors.green,
                    foregroundColor: const Color.fromARGB(255, 2, 103, 9),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const StackThirdPage()));
                  },
                  child: const Text("Third")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 20,
                      shadowColor: Colors.blue,
                      foregroundColor: Colors.blue),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const StacksixPage()));
                  },
                  child: const Text("Fouth")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 20,
                      shadowColor: Colors.yellow,
                      foregroundColor: Colors.red),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const StackFourthPage()));
                  },
                  child: const Text("fivth")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shadowColor: Colors.black,
                      foregroundColor: Colors.black),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const StackfivePage()));
                  },
                  child: const Text("Six")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shadowColor: Colors.orange,
                      foregroundColor: Colors.orange),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const StackSeven()));
                  },
                  child: const Text("Seven")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shadowColor: Colors.purple,
                      foregroundColor: Colors.purple),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const DesignSix()));
                  },
                  child: const Text("Eight")),
            ],
          ),
        ),
      ),
    );
  }
}
