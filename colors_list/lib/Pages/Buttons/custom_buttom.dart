import 'package:colors_list/Pages/Buttons/anotherCustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class CustomeButtons extends StatefulWidget {
  const CustomeButtons({super.key});

  @override
  State<CustomeButtons> createState() => _CustomeButtonsState();
}

class _CustomeButtonsState extends State<CustomeButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custome-Buttons"),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.navigate_next_outlined),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AnotherCustomButtons()));
          }),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SignInButton(
              Buttons.Google,
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            SignInButton(
              Buttons.GoogleDark,
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            SignInButton(
              Buttons.Apple,
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            SignInButton(
              Buttons.AppleDark,
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            SignInButton(
              Buttons.Twitter,
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            SignInButton(
              Buttons.FacebookNew,
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            SignInButton(
              Buttons.Microsoft,
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            InkWell(
              onTap: () {
                debugPrint("op");
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 50,
                width: 220,
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    )),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Microsoft_logo.svg/2048px-Microsoft_logo.svg.png'),
                    ),
                    Text(
                      "Sign in with Microsoft",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            InkWell(
              onTap: () {
                debugPrint("ok");
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 50,
                width: 220,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                      color: Colors.black,
                    )),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Microsoft_logo.svg/2048px-Microsoft_logo.svg.png'),
                    ),
                    Text(
                      "Sign in with Microsoft",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            SignInButtonBuilder(
              text: 'Sign in with Email',
              icon: Icons.email,
              onPressed: () {},
              backgroundColor: Colors.blueGrey.shade700,
            )
          ],
        ),
      ),
    );
  }
}
