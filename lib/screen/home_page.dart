import 'package:flutter/material.dart';
import 'package:news_app/screen/sports_page.dart';
import 'package:news_app/widget/my_search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> dynamicItems = [
    {
      "name": 'Daily News',
      "icon": Icons.newspaper_rounded,
      "selected": false,
    },
    {
      "name": 'Sports',
      "icon": Icons.sports,
      "selected": false,
    },
    {
      "name": 'City',
      "icon": Icons.location_city,
      "selected": false,
    },
    {
      "name": 'Posts',
      "icon": Icons.post_add,
      "selected": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MySearchBar(),
      ),
      body: ListView.builder(
        itemCount: dynamicItems.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              selectItem(index);
            },
            child: ListTile(
              title: Text(
                dynamicItems[index]['name'],
                style: TextStyle(
                  color: dynamicItems[index]["selected"]
                      ? Colors.blue
                      : Colors.black,
                ),
              ),
              leading: Icon(
                dynamicItems[index]['icon'],
                color: dynamicItems[index]["selected"]
                    ? Colors.blue
                    : Colors.black,
              ),
            ),
          );
        },
      ),
    );
  }

  void selectItem(int selectedIndex) {
    if (dynamicItems[selectedIndex]['name'] == 'Sports') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SportPage()),
      );
    }
  }
}
