import 'package:flutter/material.dart';
import 'article_tile.dart';

class AllTab extends StatelessWidget {
  const AllTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'All Articles',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: ArticleTile(
                        author: 'Thomas Oppong',
                        title: '6 Habits of Highly Healthy Brains',
                        time: '5 min read',
                        date: '20 Nov',
                      ),
                    ),
                    SizedBox(height: 8),
                    Expanded(
                      child: ArticleTile(
                        author: 'Kati Krause',
                        title: 'Facebook Problem',
                        time: '5 min read',
                        date: '15 Nov',
                      ),
                    ),
                    SizedBox(height: 8),
                    Expanded(
                      child: ArticleTile(
                        author: 'Kaki Okumura',
                        title: 'Get in Shape: Japanese Rule to a Healthy Diet',
                        time: '7 min read',
                        date: '12 Oct',
                      ),
                    ),
                    SizedBox(height: 8),
                    Expanded(
                      child: ArticleTile(
                        author: 'Markham Heid',
                        title: '3 Hobbies That Can Improve Your Memory',
                        time: '5 min read',
                        date: '23 Sep',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16), // Add this padding to avoid overflow
            ],
          ),
        ),
      ),
    );
  }
}
