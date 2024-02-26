import 'package:flutter/material.dart';

class RowColumFlexSecond extends StatelessWidget {
  const RowColumFlexSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: InkWell(
        onTap: () {},
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.red),
              borderRadius: BorderRadius.circular(50),
              color: Colors.blue),
          clipBehavior: Clip.hardEdge,
          child: Center(
            child: Icon(
              Icons.add,
              color: Colors.red,
            ),
          ),
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
                      color: Color(0xff8d43b3),
                    ),
                  )),
              SizedBox(
                height: 5,
              ),
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
                    )),
                    SizedBox(
                      width: 5,
                    ),
                    Flexible(
                      child: Column(
                        children: [
                          Flexible(
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
                              flex: 3,
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
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFF2AA650),
                    ),
                    // color: Color(0xFF2AA650),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
