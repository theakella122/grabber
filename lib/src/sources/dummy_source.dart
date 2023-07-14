import 'package:dio/src/dio.dart';
import 'package:grabber/grabber.dart';

///Dummy source to return when source for url is not implemented
final class DummySource implements ISource {
  @override
  Dio get client => throw UnimplementedError();

  @override
  Book getBook(String url) {
    throw UnimplementedError();
  }

  @override
  Chapter getChapterContent(Chapter chapter) {
    throw UnimplementedError();
  }

  @override
  ChaptersList getChaptersList(Book book) {
    throw UnimplementedError();
  }
}
