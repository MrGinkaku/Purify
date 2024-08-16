import 'package:flutter/material.dart';

class ArticleTile extends StatelessWidget {
  final String author;
  final String title;
  final String time;
  final String date;
  final Function()? onTap; // Define onTap callback

  const ArticleTile({
    Key? key,
    required this.author,
    required this.title,
    required this.time,
    required this.date,
    this.onTap, // Receive onTap callback
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Pass onTap callback to GestureDetector
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 195, 226, 255), // Background color
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              author,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 8), // Add spacing between author and title
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8), // Add spacing between title and time/date
            Text(
              '$time · $date',
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
