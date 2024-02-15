import 'package:flutter/material.dart';
import 'package:news_app/screen/sports_page.dart';
import 'package:news_app/widget/multiple_choice_question.dart';

class NewItemWidget extends StatelessWidget {
  final NewsItemData itemData;
  final VoidCallback onPressed;
  final bool isMultiChoiceAvailable;

  const NewItemWidget(
      {required this.onPressed,
      required this.itemData,
      Key? key,
      required this.isMultiChoiceAvailable})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    itemData.fullImage ?? "",
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 20,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.live_tv_rounded,
                        color: Colors.red,
                      ),
                      Text(
                        itemData.liveText ?? '',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Text(
                    itemData.imageDescription ?? '',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              itemData.topic ?? "",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    itemData.authourImage ?? '',
                    height: 20,
                    width: 20,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                Text(itemData.authourImage ?? ""),
              ],
            ),
            Text(
              itemData.topicDiscription ?? '',
              style: const TextStyle(fontSize: 15),
            ),
            if (isMultiChoiceAvailable) const MultiChoice(),
          ],
        ),
      ),
    );
  }
}
