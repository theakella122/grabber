import 'package:grabber/grabber.dart';

final class Book {
  final String title;
  final String author;
  final String synopsis;
  final String coverUrl;
  final List<Chapter> chapters;

  Book({
    required this.title,
    required this.author,
    required this.synopsis,
    required this.coverUrl,
    required this.chapters,
  });
}
