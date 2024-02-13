import 'package:flutter/material.dart';
import 'package:news_app/screen/gumba_screen.dart';
import 'package:news_app/widget/live_screen.dart';
import 'package:news_app/widget/multiple_choice_question.dart';

class SportPage extends StatefulWidget {
  const SportPage({Key? key}) : super(key: key);

  @override
  State<SportPage> createState() => _SportPageState();
}

class _SportPageState extends State<SportPage> {
  // String? selectedAnswer;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const Icon(Icons.menu, color: Colors.blue),
              const SizedBox(width: 30),
              const Icon(Icons.sports_esports),
              const Text("Sports"),
              const SizedBox(width: 20),
              ElevatedButton(
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
            ],
          ),
          bottom: const TabBar(
            isScrollable: true,
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
            SingleChildScrollView(
              child: Column(
                children: [
                  LiveScreen(
                    fullImage: 'assets/images/gumba.jpeg',
                    liveText: 'Live ',
                    imageDescription: 'Data or information of Screen ',
                    topic:
                        'discription of the live screen.........................',
                    topicDiscription: 'aaa',
                    authourImage: 'assets/images/gumba.jpeg',
                    authourName: "aaabbb",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GumbaPage()),
                      );
                    },
                  ),
                  const MultiChoice(),
                  LiveScreen(
                    fullImage: 'assets/images/cartoon.jpg',
                    liveText: 'Live ',
                    imageDescription: 'Data or information of Screen ',
                    topic:
                        'discription of the live screen.........................',
                    topicDiscription: 'aaa',
                    authourImage: 'assets/images/gumba.jpeg',
                    authourName: "aaabbb",
                    onPressed: () => (),
                  ),
                  LiveScreen(
                    fullImage: 'assets/images/imp_ai.png',
                    liveText: 'Live ',
                    imageDescription: 'Data or information of Screen ',
                    topic:
                        'discription of the live screen.........................',
                    topicDiscription: 'aaa',
                    authourImage: 'assets/images/gumba.jpeg',
                    authourName: "aaabbb",
                    onPressed: () => (),
                  ),
                ],
              ),
            ),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
          ],
        ),
      ),
    );
  }
}
