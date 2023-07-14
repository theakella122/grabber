import 'package:grabber/grabber.dart';

final class Book {
  final String title;
  final String author;
  final String synopsis;
  String? coverUrl;
  bool hasChapters;
  ChaptersList chapters;

  Book({
    required this.title,
    required this.author,
    required this.synopsis,
    this.coverUrl,
    this.chapters = const [],
    this.hasChapters = false,
  });
}
