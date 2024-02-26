import 'package:colors_list/Pages/Buttons/icons_buttons.dart';
import 'package:flutter/material.dart';

class AnotherCustomButtons extends StatelessWidget {
  AnotherCustomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text("Another Custom Buttons"),
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  MaterialButton(
                    onPressed: () {},
                    child: const Text('Default Material Button'),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: const SizedBox(
                      width: 200,
                      child: Row(
                        children: [
                          Icon(Icons.add),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Material Button with Icon'),
                        ],
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    disabledTextColor: Colors.grey,
                    child: const Text('Disable Material button'),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: const SizedBox(
                      width: 220,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.add),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Disable Material button icon'),
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(10)),
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                                side: BorderSide(color: Colors.black)))),
                    child: const Text(
                      "Border Material Button",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(10)),
                        foregroundColor: MaterialStateProperty.all(Colors.red),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                            side: const BorderSide(color: Colors.green)))),
                    child: const Text("Rounded Material Button",
                        style: TextStyle(color: Colors.black)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => IconsANdTextButtons()));
                    },
                    style: ButtonStyle(
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(10)),
                        foregroundColor: MaterialStateProperty.all(Colors.red),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: const BorderSide(color: Colors.red)))),
                    child: const Text("Customize Rounded Material Button",
                        style: TextStyle(color: Colors.black)),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: const BorderSide(color: Colors.blue)))),
                    child: const Text("Customize Text Style of Label",
                        style: TextStyle(
                            color: Colors.black, fontStyle: FontStyle.italic)),
                  ),
                ])),
          ),
        ));
  }
}
