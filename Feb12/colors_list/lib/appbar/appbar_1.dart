import 'package:flutter/material.dart';

class MAinAPPBRA extends StatelessWidget {
  const MAinAPPBRA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LIST of app bar"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Appbar1()));
                },
                child: const Text("APP ABr 1")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Appbar2()));
                },
                child: const Text("APP ABr 2")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Appbar3()));
                },
                child: const Text("APP ABr 3")),
          ],
        ),
      ),
    );
  }
}

class Appbar1 extends StatelessWidget {
  const Appbar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Without anything"),
      ),
    );
  }
}

class Appbar2 extends StatelessWidget {
  const Appbar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Center"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
    );
  }
}

class Appbar3 extends StatelessWidget {
  const Appbar3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("With back button"),
      ),
    );
  }
}
