import 'package:flutter/material.dart';
import 'package:news_app/screen/gumba_screen.dart';
import 'package:news_app/widget/new_item_widget.dart';

class SportPage extends StatefulWidget {
  const SportPage({Key? key}) : super(key: key);

  @override
  State<SportPage> createState() => _SportPageState();
}

class _SportPageState extends State<SportPage> {
  List newsDataList = [
    NewsItemData(
      fullImage: 'assets/images/gumba.jpeg',
      liveText: 'Live ',
      imageDescription: 'Data or information of Screen ',
      topic: 'discription of the live screen.........................',
      topicDiscription: 'aaa',
      authourImage: 'assets/images/gumba.jpeg',
      authourName: "aaabbb",
    ),
    NewsItemData(
      fullImage: 'assets/images/gumba.jpeg',
      liveText: 'Live ',
      imageDescription: 'Data or information of Screen ',
      topic: 'discription of the live screen.........................',
      topicDiscription: 'aaa',
      authourImage: 'assets/images/gumba.jpeg',
      authourName: "aaabbb",
    ),
    NewsItemData(
      fullImage: 'assets/images/gumba.jpeg',
      liveText: 'Live ',
      imageDescription: 'Data or information of Screen ',
      topic: 'discription of the live screen.........................',
      topicDiscription: 'aaa',
      authourImage: 'assets/images/gumba.jpeg',
      authourName: "aaabbb",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          actions: [
            ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
              ),
              onPressed: () {},
              child: const Row(
                children: [
                  Icon(Icons.star_purple500_outlined, color: Colors.orange),
                  Text('599'),
                ],
              ),
            ),
            const SizedBox(width: 15),
            const Icon(
              Icons.notifications,
              color: Colors.blue,
              size: 30,
            ),
            const SizedBox(width: 15),
          ],
          title: const Row(
            children: [
              Icon(Icons.location_on),
              Text("Sports"),
            ],
          ),
          bottom: const TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            tabs: [
              Tab(text: 'Popular'),
              Tab(text: 'All'),
              Tab(text: 'Politics'),
              Tab(text: 'Tech'),
              Tab(text: 'Health'),
              Tab(text: 'Science'),
              Tab(text: 'Weather'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: newsDataList.length,
              itemBuilder: (context, index) => NewItemWidget(
                isMultiChoiceAvailable: index == 0 ? true : false,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GumbaPage(
                          // argumentData: newsData[0],
                          ),
                      settings: RouteSettings(
                        arguments: newsDataList[0],
                      ),
                    ),
                  );
                },
                itemData: newsDataList[index],
              ),
            ),
            // SingleChildScrollView(
            //   child: Padding(
            //     padding: const EdgeInsets.all(18.0),
            //     child: Column(
            //       children: [
            //         NewItemWidget(
            //           fullImage: 'assets/images/gumba.jpeg',
            //           liveText: 'Live ',
            //           imageDescription: 'Data or information of Screen ',
            //           topic:
            //               'discription of the live screen.........................',
            //           topicDiscription: 'aaa',
            //           authourImage: 'assets/images/gumba.jpeg',
            //           authourName: "aaabbb",
            //           onPressed: () {
            //             Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                 builder: (context) => const GumbaPage(
            //                     // argumentData: newsData[0],
            //                     ),
            //                 settings: RouteSettings(
            //                   arguments: newsData[0],
            //                 ),
            //               ),
            //             );
            //           },
            //         ),
            //         // const MultiChoice(),
            //         NewItemWidget(
            //           fullImage: 'assets/images/cartoon.jpg',
            //           liveText: 'Live ',
            //           imageDescription: 'Data or information of Screen ',
            //           topic:
            //               'discription of the live screen.........................',
            //           topicDiscription: 'aaa',
            //           authourImage: 'assets/images/gumba.jpeg',
            //           authourName: "aaabbb",
            //           onPressed: () => (),
            //         ),
            //         NewItemWidget(
            //           fullImage: 'assets/images/imp_ai.png',
            //           liveText: 'Live ',
            //           imageDescription: 'Data or information of Screen ',
            //           topic:
            //               'discription of the live screen.........................',
            //           topicDiscription: 'aaa',
            //           authourImage: 'assets/images/gumba.jpeg',
            //           authourName: "aaabbb",
            //           onPressed: () => (),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            const Text("data"),
            const Text("data"),
            const Text("data"),
            const Text("data"),
            const Text("data"),
            const Text("data"),
          ],
        ),
      ),
    );
  }
}

class NewsItemData {
  String? fullImage;
  String? liveText;
  String? imageDescription;
  String? topic;
  String? topicDiscription;
  String? authourImage;
  String? authourName;

  NewsItemData({
    this.fullImage,
    this.liveText,
    this.imageDescription,
    this.topic,
    this.topicDiscription,
    this.authourImage,
    this.authourName,
  });
}
