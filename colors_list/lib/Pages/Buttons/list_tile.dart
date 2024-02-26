import 'package:colors_list/Pages/Buttons/listView_class.dart';
import 'package:flutter/material.dart';
import 'details_pages.dart';

class ListTilePage extends StatefulWidget {
  const ListTilePage({Key? key}) : super(key: key);

  @override
  State<ListTilePage> createState() => _ListTilePageState();
}

class _ListTilePageState extends State<ListTilePage> {
  List<ListViewProduct> productList = [
    ListViewProduct(
      imagePath: 'assets/rice.jpg',
      name: 'Rice',
      price: 10,
      detailsPageImage:
          "https://pixlr.com/images/index/ai-image-generator-three.webp",
    ),
    ListViewProduct(
      imagePath: 'assets/wheat.jpg',
      name: 'Wheat',
      price: 50,
      detailsPageImage:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdX029ohIUSygq9zirl9fSNBwSLqEOaKEYuw&usqp=CAU",
    ),
    ListViewProduct(
      imagePath: 'assets/logo.png',
      name: 'Bread',
      price: 40,
      detailsPageImage:
          "https://pixlr.com/images/index/ai-image-generator-two.webp",
    ),
    ListViewProduct(
      imagePath: 'assets/logo.png',
      name: 'Ghee',
      price: 20,
      detailsPageImage:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRim43FOsSU9F-TXSSABOeBOKxC2UPRthwJRA&usqp=CAU",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (context, index) => ListTile(
          onTap: () {
            debugPrint("$index");
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsPage(
                  picture: productList[index].detailsPageImage,
                ),
              ),
            );
          },
          leading: CircleAvatar(
              backgroundImage: AssetImage(productList[index].imagePath)),
          title: Text(productList[index].name),
          subtitle: Text(
            "${productList[index].price}",
          ),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
        ),
      ),
    );
  }
}
