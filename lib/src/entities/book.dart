import 'package:grabber/grabber.dart';

final class Book {
  final String title;
  final String synopsis;
  String? author;

  String? coverUrl;
  bool hasChapters;
  ChaptersList chapters;

  Book({
    required this.title,
    required this.synopsis,
    this.author,
    this.coverUrl,
    this.chapters = const [],
    this.hasChapters = false,
  });
}
