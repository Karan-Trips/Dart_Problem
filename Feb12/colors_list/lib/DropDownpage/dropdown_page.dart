import 'package:flutter/material.dart';

import 'package:dropdown_button2/dropdown_button2.dart';

class DropdownTask extends StatefulWidget {
  const DropdownTask({Key? key}) : super(key: key);

  @override
  State<DropdownTask> createState() => _DropdownTaskState();
}

class _DropdownTaskState extends State<DropdownTask> {
  String? val;

  List<String> items = [
    'A 1',
    'A 2',
    'A 3',
    'A 4',
    'A 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dropdown Example"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Selected: $val',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 200,
                child: DropdownButtonFormField2(
                  hint: const Text(
                    'Select Grade',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.red,
                    ),
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  isExpanded: true,
                  value: val,
                  items: items.map((String item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  onChanged: (String? str) {
                    setState(() {
                      val = str;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
