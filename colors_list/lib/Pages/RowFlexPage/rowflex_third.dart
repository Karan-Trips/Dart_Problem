import 'package:flutter/material.dart';

class RowColumFlexThird extends StatefulWidget {
  const RowColumFlexThird({super.key});

  @override
  State<RowColumFlexThird> createState() => _RowColumFlexThirdState();
}

class _RowColumFlexThirdState extends State<RowColumFlexThird> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: FloatingActionButton.extended(
          onPressed: () {},
          label: Text('Extended'),
          icon: Icon(Icons.edit),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Flexible(
                flex: 2,
                child: Row(
                  children: [
                    Flexible(
                        child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFF2AA650),
                      ),
                      // color: Color(0xFF2AA650),
                    )),
                    SizedBox(
                      width: 5,
                    ),
                    Flexible(
                      child: Column(
                        children: [
                          Flexible(
                              flex: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xff58aaE8),
                                ),
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Flexible(
                              flex: 4,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xffE74e33),
                                ),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Flexible(
                  child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff8d43b3),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
