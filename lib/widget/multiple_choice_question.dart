import 'package:flutter/material.dart';

class MultiChoice extends StatefulWidget {
  const MultiChoice({super.key});

  @override
  State<MultiChoice> createState() => _MultiChoiceState();
}

class _MultiChoiceState extends State<MultiChoice> {
  String? selectedAnswer;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'What is the best place to visit in Nepal?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              RadioListTile(
                title: const Text('Mount Everest'),
                value: 'Mount Everest',
                groupValue: selectedAnswer,
                onChanged: (value) {
                  setState(() {
                    selectedAnswer = value;
                  });
                },
              ),
              RadioListTile(
                title: const Text('Pokhara'),
                value: 'Pokhara',
                groupValue: selectedAnswer,
                onChanged: (value) {
                  setState(() {
                    selectedAnswer = value;
                  });
                },
              ),
              RadioListTile(
                title: const Text('Chitwan National Park'),
                value: 'Chitwan National Park',
                groupValue: selectedAnswer,
                onChanged: (value) {
                  setState(() {
                    selectedAnswer = value;
                  });
                },
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text(
                    'See Result',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
