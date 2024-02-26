import 'dart:convert';
import 'package:colors_list/Model/api_class.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ApiPage extends StatefulWidget {
  const ApiPage({super.key});

  @override
  State<ApiPage> createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {
  List<User> user = [];
  String error = "";

  void getUserDetail() async {
    const url = "https://randomuser.me/api/?results=5";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final result = data['results'] as List<dynamic>;
      final transform = result.map((e) {
        final name = UserName(
            title: e['name']['title'],
            first: e['name']['first'],
            last: e['name']['last']);
        return User(
          gender: e['gender'],
          name: name,
          email: e['email'],
          phone: e['phone'],
          cell: e['cell'],
          pic: e['picture']['thumbnail'],
          title: e['name']['title'],
        );
      }).toList();
      setState(() {
        user = transform;
        print("api..");
      });
    } else {
      error = response.statusCode.toString();
      throw Exception("Check the http services !!!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "API-Page",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: ListView.separated(
            addAutomaticKeepAlives: true,
            separatorBuilder: (context, index) => const Divider(
              thickness: 3,
            ),
            itemCount: user.length,
            itemBuilder: (context, index) {
              final users = user[index];
              final fname = users.name.first;
              // final email = users.email;
              final gender = users.gender == 'male' ? Icons.male : Icons.female;
              final pic = users.pic;
              final title = users.title;
              return ListTile(
                // isThreeLine: true,
                title: Text("$title. $fname"),
                leading: ClipOval(child: Image.network(pic)),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                subtitle: Icon(gender),
                onTap: () {
                  debugPrint("clicked on = $index");
                },
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: getUserDetail,
          child: const Text("Show"),
        ));
  }
}
