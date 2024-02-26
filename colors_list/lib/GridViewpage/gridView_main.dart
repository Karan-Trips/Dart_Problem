// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:colors_list/GridViewpage/Pages/class_of_extend.dart';
import 'package:colors_list/GridViewpage/Pages/class_of_gridview.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GridMainPage extends StatefulWidget {
  @override
  State<GridMainPage> createState() => _GridMainPageState();
}

class _GridMainPageState extends State<GridMainPage> {
  CustomItemList itemList = CustomItemList();

  @override
  Widget build(BuildContext context) {
    List<Color> colors = itemList.listColors;
    List<IconData> icons = itemList.listIcons;
    List<String> names = itemList.listName;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Main Page of Task day-20"),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "GridView.Builder",
              ),
              Tab(
                text: "GridView.Count",
              ),
              Tab(
                text: "GridView.Extend",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 30,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      color: index % 2 == 0 ? Colors.green : Colors.yellow,
                      child: Center(child: Text("${index + 1}")));
                }),
            GridView.count(
                primary: false,
                padding: const EdgeInsets.all(10),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                addAutomaticKeepAlives: true,
                physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
                childAspectRatio: 1.0,
                children: List.generate(16, (index) {
                  return Container(
                    padding: const EdgeInsets.all(8),
                    color: colors[index],
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(icons[index]),
                        const Gap(5),
                        Text(names[index]),
                      ],
                    )),
                  );
                })
                //

                ),
            GridView.extent(
              maxCrossAxisExtent: 150,
              children: List.generate(
                item.length,
                (index) => Container(
                  color: item[index].color,
                  margin: const EdgeInsets.all(3),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(item[index].icon),
                      Text(item[index].title),
                    ],
                  ),
                ),
              ),
            )
            
          ],
        ),
      ),
    );
  }
}

List<Items> item = <Items>[
  Items(Icons.bike_scooter, 'Bicycle', const Color(0xffe7f1fa)),
  Items(Icons.directions_boat, 'Boat', const Color(0xff2b8b31)),
  Items(Icons.bus_alert, 'Bus', const Color(0xff7f7deb)),
  Items(Icons.train, 'Train', const Color(0xffd3e38a)),
  Items(Icons.assist_walker, 'Walk', const Color(0xffddd6c3)),
  Items(Icons.contact_emergency, 'Contact', const Color(0xfff6d8fa)),
  Items(Icons.bike_scooter, 'Bicycle', const Color(0xfff8f8f8)),
  Items(Icons.directions_boat, 'Boat', const Color(0xfff8f8f8)),
  Items(Icons.bus_alert, 'Bus', const Color(0xffc2f2b8)),
  Items(Icons.train, 'Train', const Color(0xfff3d7d4)),
  Items(Icons.assist_walker, 'Walk', const Color(0xffe68ffa)),
  Items(Icons.contact_emergency, 'Contact', const Color(0xffd5addf)),
];
