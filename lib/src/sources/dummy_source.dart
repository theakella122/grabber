import 'package:dio/src/dio.dart';
import 'package:grabber/grabber.dart';

///Dummy source to return when source for url is not implemented
final class DummySource implements ISource {
  @override
  Dio get client => throw UnimplementedError();

  @override
  Future<Book> getBook(String url) async {
    throw UnimplementedError();
  }

  @override
  Future<String> getChapterContent(String url) {
    throw UnimplementedError();
  }

  @override
  Future<ChaptersList> getChaptersList(String url) {
    throw UnimplementedError();
  }
}
