import 'package:flutter/material.dart';

class MySearchBar extends StatefulWidget {
  const MySearchBar({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MySearchBarState createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(200),
        border: Border.all(color: Colors.blue),
      ),
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _controller,
        style: const TextStyle(color: Colors.black),
        decoration: const InputDecoration(
          icon: Icon(Icons.search),
          hintText: 'Search',
          // hintStyle: const TextStyle(color: Colors.black),
          // suffixIcon: IconButton(
          //   icon: const Icon(
          //     Icons.search,
          //     // color: Colors.black,
          //   ),
          //   onPressed: () {
          //     String searchText = _controller.text;
          //     ('Searching for: $searchText');
          //   },
          // ),
        ),
      ),
    );
  }
}
