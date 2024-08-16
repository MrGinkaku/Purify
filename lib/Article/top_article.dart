import 'package:flutter/material.dart';
import '../Models/article/TopArticleCard.dart';

class TopArticles extends StatelessWidget {
  const TopArticles({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          SizedBox(
            
            width: 200,
            child: TopArticleCard(
              author: 'Thomas Oppong',
              title: '6 Habits of Highly Healthy Brains',
              image: 'assets/article1.png',
              likes: '10.4k',
              comments: '45',
            ),
          ),
          SizedBox(
            width: 200,
            child: TopArticleCard(
              author: 'Kati Krause',
              title: 'Facebook\'s Problem',
              image: 'assets/article2.png',
              likes: '5.9k',
              comments: '20',
            ),
          ),
          SizedBox(
            width: 200,
            child: TopArticleCard(
              author: 'Kati Krause',
              title: '3 Hobbies That Can Improve Your Memory',
              image: 'assets/article3.png',
              likes: '5.9k',
              comments: '20',
            ),
          ),
        ],
      ),
    );
  }
}
