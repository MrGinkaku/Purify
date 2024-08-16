import 'package:flutter/material.dart';
import 'top_article.dart';
import 'article_tile.dart';
import 'article_detail.dart'; // Import the ArticleDetail class

class TopArticleTab extends StatefulWidget {
  const TopArticleTab({super.key});

  @override
  _TopArticleTabState createState() => _TopArticleTabState();
}

class _TopArticleTabState extends State<TopArticleTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: const Color.fromARGB(255, 106, 171, 255),
                padding: const EdgeInsets.all(8.0),
                child: const TopArticles(),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Based on your health history',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ArticleDetail(
                        author: 'Kaki Okumura',
                        title: 'Get in Shape: Japanese Rule to a Healthy Diet',
                        time: '7 min read',
                        date: '12 Oct',
                        content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed porttitor lectus id neque euismod, ac lacinia lectus varius. Maecenas ac neque vel lectus rhoncus bibendum. Ut finibus velit et massa laoreet, id aliquet ligula blandit. Donec nec justo ut diam tincidunt tincidunt. Nulla facilisi. Pellentesque sed tellus vel lectus sollicitudin efficitur eu vel felis. Sed in tortor a ex tincidunt egestas vel non lacus. Nulla facilisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
                      ),
                    ),
                  );
                },
                child: const SizedBox(
                  height: 150,
                  width: double.infinity,
                  child: ArticleTile(
                    author: 'Kaki Okumura',
                    title: 'Get in Shape: Japanese Rule to a Healthy Diet',
                    time: '7 min read',
                    date: '12 Oct',
                  ),
                ),
              ),
              const SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ArticleDetail(
                        author: 'Markham Heid',
                        title: '3 Hobbies That Can Improve Your Memory',
                        time: '5 min read',
                        date: '23 Sep',
                        content: 'Cognitive decline is inevitable as we get older. According to the American Psychological Association, "the brain’s volume peaks in the early 20s and gradually declines for the rest of life". But your lifestyle can slow the process. You can preserve and even enhance your mental capabilities as you age. Simple behaviour changes can help us stay sharp for as long as possible. What you do or don’t do makes a huge difference to your memory skills. Pursuing both intellectual and physical challenges, as uncomfortable as it may be, is one of the best ways to slow the natural memory decline process. New challenges are a way to exercise the mind and...',
                      ),
                    ),
                  );
                },
                child: const SizedBox(
                  height: 150,
                  width: double.infinity,
                  child: ArticleTile(
                    author: 'Markham Heid',
                    title: '3 Hobbies That Can Improve Your Memory',
                    time: '5 min read',
                    date: '23 Sep',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
