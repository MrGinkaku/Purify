class Article {
  final String title;
  final String author;
  final String readTime;
  final String publishedDate;
  final String description;
  final String imageUrl;
  final int likes;
  final int comments;

  Article({
    required this.title,
    required this.author,
    required this.readTime,
    required this.publishedDate,
    required this.description,
    required this.imageUrl,
    required this.likes,
    required this.comments,
  });
}