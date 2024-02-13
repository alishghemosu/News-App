import 'package:flutter/material.dart';

class LiveScreen extends StatelessWidget {
  final String fullImage;
  final String liveText;
  final String imageDescription;
  final VoidCallback onPressed;
  final String topic;
  final String? topicDiscription;
  final String? authourImage;
  final String? authourName;

  const LiveScreen(
      {required this.fullImage,
      required this.liveText,
      required this.imageDescription,
      required this.onPressed,
      required this.topic,
      this.topicDiscription,
      this.authourImage,
      this.authourName,
      Key? key})
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
                    fullImage,
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
                        liveText,
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
                    imageDescription,
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
              topic,
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
                    authourImage!,
                    height: 20,
                    width: 20,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                Text(authourName!),
              ],
            ),
            Text(
              topicDiscription!,
              style: const TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
