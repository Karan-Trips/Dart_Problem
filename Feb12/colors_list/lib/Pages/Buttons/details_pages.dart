import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.picture});
  final String picture;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Network Images'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                    height: 500,
                    width: double.infinity,
                    child: Image.network(
                      picture,
                      fit: BoxFit.fill,
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Image.network(
                            fit: BoxFit.cover,
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIRS2jDl4BDvLHnTNHyuj6_Q2R9KSxegJxEUw3In18wh1UqsvqT4s_t_w_NKLlDe298Og&usqp=CAU"),
                      ),
                      const Gap(8),
                      Expanded(
                        child: Image.network(
                            fit: BoxFit.cover,
                            "https://avatars.mds.yandex.net/i?id=b507a2b8d9382967a186c654f1eeaa74-5262078-images-taas-consumers&n=27&h=480&w=480"),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
