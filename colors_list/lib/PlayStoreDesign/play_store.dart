import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:colors_list/PlayStoreDesign/class.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PlayStoreDesign extends StatefulWidget {
  const PlayStoreDesign({super.key});

  @override
  State<PlayStoreDesign> createState() => _PlayStoreDesignState();
}

class _PlayStoreDesignState extends State<PlayStoreDesign> {
  Widget _catagories() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Best New Games",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  print("see all");
                });
              },
              child: const Text(
                "See all",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }

  Widget apps() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Best New App",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  print("see all");
                });
              },
              child: const Text(
                "See all",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }

  List<AppItem> app = [
    AppItem("assets/bgmi.jpg", "PUBG", "Game", "App at Limited Stock"),
    AppItem("assets/spi.jpg", "valorant", "Game", "New Arival"),
    AppItem("assets/war.jpg", "Clash of Clan", "Game", "Hot App"),
    AppItem("assets/4.jpg", "Clash of Royal", "Game", "Limited Period Offer"),
  ];

  List<AppItem> games = [
    AppItem(
        'https://media.wired.com/photos/62feb60bcea7c0581e825cb0/master/pass/Fate-of-Game-Preservation-Games-GettyImages-1170073827.jpg',
        'Python',
        'Entertainment',
        '12'),
    AppItem(
        'https://img.freepik.com/free-psd/whatsapp-icon-isolated-3d-render-illustration_47987-9785.jpg',
        'Whatsapp',
        'Game',
        '30'),
    AppItem(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZ-g2zknp5rVroM3sl_16OUpbHIFJ1dxPlKG-8NwPPZw&s',
        'Social Media',
        'Travel',
        '25'),
    AppItem(
        'https://img.freepik.com/premium-photo/youtube-logo-video-player-3d-design-video-media-player-interface_41204-12379.jpg',
        'Youtube',
        'Social network',
        'Free'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feature App'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: app.length,
              options: CarouselOptions(
                height: 200,
                initialPage: 0,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 2),
                autoPlayAnimationDuration: const Duration(milliseconds: 700),
                autoPlayCurve:
                    Curves.bounceOut, //aur change kar aniamtion ke liye
                enlargeCenterPage: true,
              ),
              itemBuilder: (context, index, i) {
                return Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.red[200],
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(app[index].imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 10,
                        left: 25,
                        child: Text(
                          app[index].descrip,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            const Divider(),
            _catagories(),
            Column(
              children: [
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 250,
                        margin: const EdgeInsets.all(5),
                        width: 220,
                        decoration: BoxDecoration(
                          // color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                app[index].imageUrl,
                                width: 195,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              alignment: Alignment.topLeft,
                              margin: const EdgeInsets.only(left: 28),
                              child: Text(
                                app[index].name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            const SizedBox(height: 1),
                            Container(
                              alignment: Alignment.topLeft,
                              margin: const EdgeInsets.only(left: 35),
                              child: Text(
                                app[index].type,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: app.length,
                  ),
                ),
              ],
            ),
            const Divider(),
            apps(),
            Column(
              children: [
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 250,
                        margin: const EdgeInsets.all(5),
                        width: 220,
                        decoration: BoxDecoration(
                          // color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.network(
                                games[index].imageUrl,
                                width: 195,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              alignment: Alignment.topLeft,
                              margin: const EdgeInsets.only(left: 28),
                              child: Text(
                                games[index].name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            const SizedBox(height: 1),
                            Container(
                              alignment: Alignment.topLeft,
                              margin: const EdgeInsets.only(left: 35),
                              child: Row(
                                children: [
                                  Text(
                                    games[index].type,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  const Gap(10),
                                  Text(
                                    " \$${games[index].descrip}",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: games.length,
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
