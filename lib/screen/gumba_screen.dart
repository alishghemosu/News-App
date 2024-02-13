import 'package:flutter/material.dart';

class GumbaPage extends StatefulWidget {
  const GumbaPage({super.key});

  @override
  State<GumbaPage> createState() => _GumbaPageState();
}

class _GumbaPageState extends State<GumbaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.bookmark),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.card_travel,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Travel',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 50),
                  const Text(
                    "December 14, 2019-16:19",
                    style: TextStyle(
                      color: Color.fromARGB(255, 107, 105, 105),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.all(10),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Gumba ..............',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Destination Nepal',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 151, 149, 149),
                      ),
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "assets/images/gumba.jpeg",
                  height: 290,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                  'Gumba.........................................................................................................................................................................................................................................................'),
            ],
          ),
        ),
      ),
    );
  }
}
