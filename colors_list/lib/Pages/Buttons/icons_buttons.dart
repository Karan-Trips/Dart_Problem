import 'package:flutter/material.dart';

class IconsANdTextButtons extends StatelessWidget {
  const IconsANdTextButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icons Buttons'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(50)),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.upload_rounded),
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 2),
                color: Colors.green,
                borderRadius: BorderRadius.circular(50)),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextButton(
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.download_outlined),
                  SizedBox(
                    width: 7,
                  ),
                  Text("Download")
                ],
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.message_outlined,
                color: Colors.black,
              ))
        ],
      )),
    );
  }
}
