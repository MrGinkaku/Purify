import 'package:flutter/material.dart';
import 'article_tile.dart';

class NewPublishedTab extends StatelessWidget {
  const NewPublishedTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Newest articles',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              // Fetch articles from a data source
              FutureBuilder<List<Article>>(
                future: _fetchArticles(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final articles = snapshot.data!;
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: articles.length,
                      itemBuilder: (context, index) {
                        final article = articles[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: ArticleTile(
                            author: article.author,
                            title: article.title,
                            time: article.time,
                            date: article.date,
                            onTap: () {
                              // Handle article tap event
                            },
                          ),
                        );
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Text('Error fetching articles: ${snapshot.error}');
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
              SizedBox(height: 16), // Add this padding
            ],
          ),
        ),
      ),
    );
  }

  Future<List<Article>> _fetchArticles() async {
    // Implement your article fetching logic here
    // This could involve making an API call or querying a database
    // For this example, we'll just return a dummy list of articles
    return [
      Article(
        author: 'Kaki Okumura',
        title: 'Get in Shape: Japanese Rule to a Healthy Diet',
        time: '7 min read',
        date: '12 Oct',
      ),
      Article(
        author: 'Markham Heid',
        title: '3 Hobbies That Can Improve Your Memory',
        time: '5 min read',
        date: '23 Sep',
      ),
      Article(
        author: 'Kaki Okumura',
        title: 'Get in Shape: Japanese Rule to a Healthy Diet',
        time: '7 min read',
        date: '12 Oct',
      ),
      Article(
        author: 'Markham Heid',
        title: '3 Hobbies That Can Improve Your Memory',
        time: '5 min read',
        date: '23 Sep',
      ),
    ];
  }
}


class Article {
  final String author;
  final String title;
  final String time;
  final String date;

  Article({
    required this.author,
    required this.title,
    required this.time,
    required this.date,
  });
}
