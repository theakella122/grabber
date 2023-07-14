import 'package:dio/dio.dart';
import 'package:grabber/grabber.dart';

abstract interface class ISource {
  final Dio client;

  Book getBook(String url);

  ChaptersList getChaptersList(Book book);

  Chapter getChapterContent(Chapter chapter);

  const ISource({required this.client});
}
