import 'package:dio/dio.dart';
import 'package:grabber/grabber.dart';

abstract interface class ISource {
  final Dio client = Dio();

  Future<Book> getBook(String url);

  Future<ChaptersList> getChaptersList(String url);

  Future<String> getChapterContent(String url);
}
