import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isDoctor;
  final String timestamp;
  final String imageUrl;
  final String img;

  const ChatBubble({super.key, 
    required this.text,
    required this.isDoctor,
    required this.timestamp,
    required this.imageUrl,
    this.img = "",
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isDoctor) CircleAvatar(backgroundImage: AssetImage(imageUrl)),
          if (!isDoctor) const Spacer(),
          Expanded(
            child: Column(
              crossAxisAlignment: isDoctor ? CrossAxisAlignment.start : CrossAxisAlignment.end,
              children: [
                Text(
                  timestamp,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  decoration: BoxDecoration(
                    color: isDoctor ? Colors.grey[300] : Colors.blue[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: isDoctor ? CrossAxisAlignment.start : CrossAxisAlignment.end,
                    children: [
                      Text(
                        text,
                        style: const TextStyle(fontSize: 20),
                      ),
                      if (img.isNotEmpty) ...[
                        const SizedBox(height: 100),
                        Image.asset(
                          img,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (!isDoctor) CircleAvatar(backgroundImage: AssetImage(imageUrl)),
          if (isDoctor) const Spacer(),
        ],
      ),
    );
  }
}
