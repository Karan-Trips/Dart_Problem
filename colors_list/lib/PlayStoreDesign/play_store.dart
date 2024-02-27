import 'package:carousel_slider/carousel_slider.dart';
import 'package:colors_list/PlayStoreDesign/class.dart';
import 'package:flutter/material.dart';

class PlayStoreDesign extends StatefulWidget {
  const PlayStoreDesign({super.key});

  @override
  State<PlayStoreDesign> createState() => _PlayStoreDesignState();
}

class _PlayStoreDesignState extends State<PlayStoreDesign> {
  Widget _catagories() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
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
                  debugPrint("see all");
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
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
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
                  debugPrint("see all");
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
                autoPlayCurve: Curves
                    .bounceOut, //to change the animation style <------------
                enlargeCenterPage: true,
              ),
              itemBuilder: (context, index, i) {
                return Container(
                  width: double.infinity,
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
            _catagories(),
            Column(
              children: [
                SizedBox(
                  height: 205,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(left: 11),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(7),
                              child: Image.asset(
                                app[index].imageUrl,
                                width: 200,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    app[index].name,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    app[index].type,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      // color: Colors.black,
                                    ),
                                  ),
                                  // const Text(
                                  //   "\$32",
                                  //   style: TextStyle(
                                  //     fontWeight: FontWeight.w400,
                                  //     fontSize: 15,
                                  //     // color: Colors.black,
                                  //   ),
                                  // ),
                                ],
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
                        margin: const EdgeInsets.only(left: 15),
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(7),
                        // ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(7),
                              child: Image.network(
                                games[index].imageUrl,
                                width: 200,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    games[index].name,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    games[index].type,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                    ),
                                  ),
                                  // const SizedBox(height: 4),
                                  Row(
                                    children: [
                                      const Text(
                                        "\$23",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        "(${games[index].descrip})",
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
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
