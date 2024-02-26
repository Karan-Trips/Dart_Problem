import 'package:flutter/material.dart';

class RowColumFlexFirst extends StatelessWidget {
  const RowColumFlexFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        onPressed: () {},
        child: Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Flexible(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFF2AA650),
                    ),
                  )),
              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Flexible(
                          child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xff58aaE8),
                        ),
                      )),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xffE74e33),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Flexible(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xff8d43b3),
                    ),
                  )),
              SizedBox(
                height: 5,
              ),
              Flexible(
                  child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff58aaE8),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
