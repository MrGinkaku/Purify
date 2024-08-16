import 'package:flutter/material.dart';

class ArticleCard extends StatelessWidget {
  final String title;
  final String author;
  final String readTime;
  final String publishedDate;
  final String content;

  const ArticleCard({super.key, 
    required this.title,
    required this.author,
    required this.readTime,
    required this.publishedDate,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              '$author • $readTime • $publishedDate',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              content,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
